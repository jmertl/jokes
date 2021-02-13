import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/bloc/jokes/jokes_cubit.dart';
import 'package:jokes/presentation/joke_page.dart';
import 'package:jokes/repositories/jokes_api.dart';

class MainPage extends StatelessWidget {
  final JokesApi jokesApi;

  const MainPage({Key key, @required this.jokesApi})
      : assert(jokesApi != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JokesCubit>(
          create: (context) => JokesCubit(jokesApi: jokesApi),
        )
      ],
      child: JokePage(),
    );
  }
}
