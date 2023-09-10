import 'package:advicer_flutter_project/02_domain/failures/failures.dart';
import 'package:advicer_flutter_project/02_domain/usecases/advice_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

const String serverFailureMessage = "Ups, API Error. Please try again!!";

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit({required this.adviceUseCases}) : super(AdvicerInitial());
  final AdviceUseCases adviceUseCases;

  void adviceRequested() async {
    emit(AdvicerStateLoading());

    final failuerOrData = await adviceUseCases.getAdvice();
    failuerOrData.fold(
      (failure) =>
          emit(AdvicerStateError(message: _mapFailureToMessage(failure))),
      (data) => emit(AdvicerStateLoaded(advice: data.advice)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return "Ups, cached failed. Please try again!!";
      default:
        return "Ups, Something gone wrong. Please try again";
    }
  }
}
