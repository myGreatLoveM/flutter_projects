import 'package:dartz/dartz.dart';
import 'package:advicer_flutter_project/02_domain/failures/failures.dart';
import 'package:advicer_flutter_project/02_domain/entities/advice_entity.dart';

abstract class AdviceRepo {
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource();
}
