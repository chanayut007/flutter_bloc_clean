import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean/domain/failure/failure.dart';

abstract class UseCase<Result, Params> {
  Either<Failure, Result> call(Params params);
}

abstract class UseCaseAsync<Result, Params> {
  Future<Either<Failure, Result>> call(Params params);
}

class NoParams {}