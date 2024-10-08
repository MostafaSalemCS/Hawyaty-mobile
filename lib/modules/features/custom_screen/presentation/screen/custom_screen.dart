import 'package:flutter/material.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/painter/colors.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/painter/liquid_painter.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/painter/radial_painter.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  late AnimationController _controller;
  bool isPlaying = false;
  int maxDuration = 10;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: maxDuration))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {

        if (status == AnimationStatus.completed) {
          AppNavigator.instance.navigateTo(RouteNames.loginScreen);
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double val = (_controller.value * maxDuration);
    return Scaffold(
      backgroundColor: const Color(0xFF232424),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                (val.toInt() * 10).toString(),
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
              Text(
                ".${val.toStringAsFixed(1).substring(val.toString().indexOf(".") + 1)} %",
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          AnimatedBuilder(
              animation: _controller,
              builder: (context, _) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),
                      //   child: CustomPaint(
                      //     painter: LiquidPainter(
                      //       _controller.value * maxDuration,
                      //       maxDuration.toDouble(),
                      //     ),
                      //   ),
                      // ),
                      CustomPaint(
                          painter: RadialProgressPainter(
                            value: _controller.value * maxDuration,
                            backgroundGradientColors: gradientColors,
                            minValue: 0,
                            maxValue: maxDuration.toDouble(),
                          )),
                    ],
                  ),
                );
              }),
          const SizedBox(
            height: 50,
          ),
          // // Start and Stop Button
          // Container(
          //   alignment: Alignment.center,
          //   height: 60,
          //   decoration: BoxDecoration(
          //       border: Border.all(
          //         color: Colors.white54,
          //         width: 2,
          //       ),
          //       shape: BoxShape.circle),
          //   child: GestureDetector(
          //     onTap: () {
          //       setState(() {
          //         if (isPlaying) {
          //           _controller.reset();
          //         } else {
          //           _controller.reset();
          //           _controller.forward();
          //         }
          //         isPlaying = !isPlaying;
          //       });
          //     },
          //     child: AnimatedContainer(
          //       height: isPlaying ? 25 : 60,
          //       width: isPlaying ? 25 : 60,
          //       duration: const Duration(milliseconds: 300),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(isPlaying ? 4 : 100),
          //         color: Colors.white54,
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
