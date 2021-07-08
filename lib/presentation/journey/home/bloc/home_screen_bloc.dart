import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'home_screen_event.dart';

part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(InitialHomeScreenState());

  @override
  Stream<HomeScreenState> mapEventToState(HomeScreenEvent event) async* {
    switch (event.runtimeType) {
      case IncrementEvent:
        yield* mapIncrementEventToState(event);
        break;
      case DecrementEvent:
        yield* mapDecrementEventToState(event);
        break;
    }
  }

  Stream<HomeScreenState> mapIncrementEventToState(
      IncrementEvent event) async* {
    int count = state.count;
    count = count + 1;
    yield HomeScreenChangeState(count);
  }

  Stream<HomeScreenState> mapDecrementEventToState(
      DecrementEvent event) async* {
    int count = state.count;
    count = count - 1;
    yield HomeScreenChangeState(count);
  }
}
