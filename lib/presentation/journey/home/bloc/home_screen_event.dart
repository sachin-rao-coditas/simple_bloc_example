part of 'home_screen_bloc.dart';

abstract class HomeScreenEvent {}

class IncrementEvent extends HomeScreenEvent {
  IncrementEvent();
}

class DecrementEvent extends HomeScreenEvent {
  DecrementEvent();
}
