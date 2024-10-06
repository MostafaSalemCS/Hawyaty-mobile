import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String errorMessage;
  final String? errorCode;
  const Failure(this.errorMessage, this.errorCode);

  @override
  List<Object> get props => [errorMessage];
}