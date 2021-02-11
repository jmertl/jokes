import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/bloc/jokes/jokes_cubit.dart';
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
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Jokes'),
          ),
          body: BlocBuilder<JokesCubit, JokesState>(
            builder: (context, state) {
              return state.when(
                loadSuccess: (joke) {
                  return Center(
                    child: Row(
                      children: [
                        Text("${joke.setup}"),
                        Text("${joke.punchline}"),
                      ],
                    ),
                  );
                },
                initial: () {
                  BlocProvider.of<JokesCubit>(context).getRandomJoke();
                  return Center(
                    child: Text('Initial status'),
                  );
                },
                loadFailed: () {
                  return Center(
                    child: Text('Load failed'),
                  );
                },
                loading: () {
                  return Center(
                    child: Text('Loading...'),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
