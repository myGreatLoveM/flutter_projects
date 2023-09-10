import 'package:advicer_flutter_project/01_data/datasources/advice_remote_datasource.dart';
import 'package:advicer_flutter_project/01_data/exceptions/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:advicer_flutter_project/02_domain/repositories/advice_repo.dart';
import 'package:advicer_flutter_project/02_domain/failures/failures.dart';
import 'package:advicer_flutter_project/02_domain/entities/advice_entity.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDataSource adviceRemoteDataSource;
  AdviceRepoImpl({required this.adviceRemoteDataSource});
  
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource() async {
    try {
      final result = await adviceRemoteDataSource.getRandomAdviceFromApi();
      return right(result);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } catch (_) {
      return left(GeneralFailure());
    }
  }
}
