import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawyaty/core/localiztion/app_localization.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:hawyaty/modules/app/cubit/app_cubit/app_bloc.dart';


class LangScreen extends StatefulWidget {
  @override
  _LangScreenState createState() => _LangScreenState();
}

class _LangScreenState extends State<LangScreen>  {


  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

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
              GestureDetector(
                onTap: (){
                  BlocProvider.of<AppBloc>(context).add(
                      const LanguageChanged(locale: Locale('en'))
                  );
                },
                child: Text(
                  AppLocalizations.of(context)?.changeLang ?? "",
                  style: const TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
