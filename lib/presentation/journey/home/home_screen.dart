import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_example/presentation/journey/home/bloc/home_screen_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenBloc homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = HomeScreenBloc();
  }

  void _incrementCounter() {
    homeBloc.add(IncrementEvent());
  }

  void _decrementCounter() {
    homeBloc.add(DecrementEvent());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Simple Bloc Example"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<HomeScreenBloc, HomeScreenState>(
                bloc: homeBloc,
                builder: (context, state) => AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: (state.count >= 0 && state.count < 10)
                      ? Theme.of(context).textTheme.headline2
                      : Theme.of(context).textTheme.headline3,
                  child: Text('${state.count}'),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              )
            ],
          ),
        ),
      );
}
