import 'package:flutter/material.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/cubit/lo_viewer_cubit.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/widget/lo_viewer_page.dart';
import 'package:hawyaty/modules/shared/partial/presentation/base_screen/base_screen.dart';

class LOViewerScreen extends BasePageScreen {
  final String gameObjectUrl;
  final TextDirection? textDirection;
  final String? clipName;
  final int? clipType;

  const LOViewerScreen({
    required this.gameObjectUrl,
    this.textDirection,
    this.clipName,
    this.clipType,
    super.key,
  });

  @override
  State<LOViewerScreen> createState() => _LOViewerScreenState();
}

class _LOViewerScreenState extends BasePageScreenState<LOViewerScreen> with BaseScreen {
  late LoViewerCubit cubit;

  @override
  Widget? appToolbar(BuildContext context) {
    return null;
  }

  @override
  Widget? body(BuildContext context) {
    return LOViewerPage(cubit: cubit);
  }

  @override
  void initState() {
    super.initState();

    cubit = LoViewerCubit(
        // analyticsUseCase: GetIt.instance.get<AnalyticsUseCase>(),
        // userProviderUseCase: GetIt.instance.get<UserProviderUseCase>(),
        );
    cubit.initialize(gameObjectUrl: widget.gameObjectUrl, clipName: widget.clipName);
  }

  @override
  void dispose() {
    // cubit.dispose();
    super.dispose();
    if (cubit.isClosed) {
      cubit.close();
    }
  }
}
