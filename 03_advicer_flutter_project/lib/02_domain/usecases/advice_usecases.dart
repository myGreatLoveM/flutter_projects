import 'package:advicer_flutter_project/01_data/repositories/advice_repo_impl.dart';
import 'package:advicer_flutter_project/02_domain/entities/advice_entity.dart';
import 'package:advicer_flutter_project/02_domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCases {
  final AdviceRepoImpl adviceRepo;
  AdviceUseCases({required this.adviceRepo});

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    final data = await adviceRepo.getAdviceFromDataSource();
    return data;
  }
}
