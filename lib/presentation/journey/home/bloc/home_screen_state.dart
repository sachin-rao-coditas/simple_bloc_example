part of 'home_screen_bloc.dart';

abstract class HomeScreenState {
  int count;

  HomeScreenState({@required this.count});
}

class InitialHomeScreenState extends HomeScreenState {
  InitialHomeScreenState() : super(count: 0);
}

class HomeScreenChangeState extends HomeScreenState {
  HomeScreenChangeState(int count) : super(count: count);
}
