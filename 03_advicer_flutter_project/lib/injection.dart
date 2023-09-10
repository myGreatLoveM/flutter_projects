import 'package:advicer_flutter_project/01_data/datasources/advice_remote_datasource.dart';
import 'package:advicer_flutter_project/01_data/repositories/advice_repo_impl.dart';
import 'package:advicer_flutter_project/02_domain/repositories/advice_repo.dart';
import 'package:advicer_flutter_project/02_domain/usecases/advice_usecases.dart';
import 'package:advicer_flutter_project/03_application/pages/advice_page/cubit/advicer_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.I;

Future<void> init() async {
  // ! application layer
  sl.registerFactory(() => AdvicerCubit(adviceUseCases: sl()));

  // ! domain layer
  sl.registerFactory(() => AdviceUseCases(adviceRepo: sl()));

  // ! data layer
  sl.registerFactory<AdviceRepo>(
      () => AdviceRepoImpl(adviceRemoteDataSource: sl()));
  sl.registerFactory<AdviceRemoteDataSource>(
      () => AdviceRemoteDataSourceImpl(client: sl()));

  // ! ext
  sl.registerFactory(() => http.Client());
}
