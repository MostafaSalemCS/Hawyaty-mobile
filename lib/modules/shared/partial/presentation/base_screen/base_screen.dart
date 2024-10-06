import 'package:flutter/material.dart';
import 'package:hawyaty/core/services/busy_service.dart';
import 'package:hawyaty/modules/shared/partial/presentation/custom/refresh_indicator/non_scrollable_refresh_indicator_widget.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({super.key});
}

abstract class BasePageScreenState<Page extends BasePageScreen> extends State<Page>
    with WidgetsBindingObserver {

}

mixin BaseScreen<Page extends BasePageScreen> on BasePageScreenState<Page> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: unSafeAreaColor,
      child: wrapWithSafeArea
          ? SafeArea(
        top: setTopSafeArea,
        bottom: setBottomSafeArea,
        child: _buildScaffold(context),
      )
          : _buildScaffold(context),
    );
  }

  @protected
  Color? get unSafeAreaColor => Colors.black;

  @protected
  bool get wrapWithSafeArea => true;

  @protected
  bool get setTopSafeArea => true;

  @protected
  bool get setBottomSafeArea => true;

  Widget _buildScaffold(BuildContext context) {
    return Scaffold(
      extendBody: extendBodyBehindAppBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: buildAppBar(context),
      body: refreshOverride == null
          ? buildScreen(context)
          : NonScrollableRefreshIndicatorWidget(
        onRefresh: () async {
          refreshOverride!();
        },
        child: buildScreen(context),
      ),

      backgroundColor: screenBackgroundColor,
      bottomNavigationBar: buildBottomNavigationBar(context),
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton: buildFloatingActionButton,
    );
  }

  @protected
  bool get extendBodyBehindAppBar => false;

  @protected
  bool get resizeToAvoidBottomInset => true;

  @protected
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  @protected
  VoidCallback? refreshOverride;

  @protected
  Color? get screenBackgroundColor => Colors.white;

  @protected
  Widget? buildBottomNavigationBar(BuildContext context) => null;

  @protected
  FloatingActionButtonLocation? get floatingActionButtonLocation => null;

  @protected
  Widget? get buildFloatingActionButton => null;

  Widget buildScreen(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            // maxHeight: double.infinity,
          ),

          child: Column(
            mainAxisSize: MainAxisSize.max,

            children: [
              appToolbar(context) ?? const SizedBox.shrink(),

              Flexible(
                  child: body(context) ?? Container()),
            ],
          ),
        ),
        StreamBuilder<int>(
          stream: BusyService.getInstance.outLoadingRequestCount,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            // return Text('You hit me: ${snapshot.data} times');
            if (snapshot.data == 0) return const SizedBox.shrink();
            return loadingWidget();
          },
        ),
      ],
    );
  }

  Widget? body(BuildContext context);
  Widget? appToolbar(BuildContext context);
  Widget loadingWidget() {
    return const SizedBox.shrink();
  }
}
