import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hawyaty/core/enums/enum.dart';

part 'lo_type_state.dart';

class LoTypeCubit extends Cubit<LoTypeState> {
  LoTypeCubit() : super(LoTypeState.initial());

  Future<void> initialize() async {}

  Future<void> openLOViewerPage() async {
    emit(state.copyWith(
        loTypeStatus: LOTypeEnum.openLO,
        url: "https://bespoke-sundae-b302e4.netlify.app/?isNext=true&platform=se"));
  }

  Future<void> loClosed() async {
    emit(state.copyWith(loTypeStatus: LOTypeEnum.setPortrait));
  }

  Future<void> loOrientationOpen() async {
    emit(state.copyWith(loTypeStatus: LOTypeEnum.setLandScape));
  }

  void dispose() {}
}
