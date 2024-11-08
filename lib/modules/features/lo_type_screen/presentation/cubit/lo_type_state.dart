part of 'lo_type_cubit.dart';

enum LOTypeEnum {
  openLO,
  openVideo,
  setPortrait,
  setLandScape,
}

@immutable
class LoTypeState extends Equatable {
  final BaseCubitStatus baseStatus;
  final LOTypeEnum? loTypeStatus;
  final String? url;
  final TextDirection? textDirection;
  final String? clipName;
  final int? clipType;

  const LoTypeState(
      {required this.baseStatus,
      required this.url,
      required this.loTypeStatus,
      required this.textDirection,
      required this.clipName,
      required this.clipType});

  LoTypeState copyWith({
    BaseCubitStatus? baseStatus,
    LOTypeEnum? loTypeStatus,
    String? url,
    TextDirection? textDirection,
    String? clipName,
    int? clipType,
  }) =>
      LoTypeState(
        baseStatus: baseStatus ?? this.baseStatus,
        loTypeStatus: loTypeStatus ?? this.loTypeStatus,
        url: url ?? this.url,
        textDirection: textDirection ?? this.textDirection,
        clipName: clipName ?? this.clipName,
        clipType: clipType ?? this.clipType,
      );

  static LoTypeState initial() => const LoTypeState(
        baseStatus: BaseCubitStatus.initial,
        loTypeStatus: null,
        url: null,
        textDirection: null,
        clipName: null,
        clipType: null,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [baseStatus, loTypeStatus, url, textDirection, clipName, clipType];
}
