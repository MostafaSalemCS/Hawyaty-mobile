import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hawyaty/core/error/failure.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> execute(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}