// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequetsedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      // execute business logic
      // getAdvice
      print('fake get advice triggered');
      await Future.delayed(const Duration(seconds: 3), () {});
      print('got advice');
      emit(AdvicerStateLoaded(advice: 'Fake advice to test bloc'));
      // emit(AdvicerStateError(
      //     message: 'Error Ocurred while getting an advice for you !!!!'));
    });
  }
}
