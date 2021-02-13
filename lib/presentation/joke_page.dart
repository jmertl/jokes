import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/bloc/jokes/jokes_cubit.dart';

class JokePage extends StatelessWidget {
  const JokePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(192, 108, 132, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Jokes'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: 'Get new random joke',
              onPressed: () {
                BlocProvider.of<JokesCubit>(context).getRandomJoke();
              },
            ),
          ],
        ),
        body: BlocBuilder<JokesCubit, JokesState>(
          builder: (context, state) {
            return state.when(
              loadSuccess: (joke) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: Text(
                        "${joke.setup}",
                        textAlign: TextAlign.center,
                      )),
                      Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "${joke.punchline}",
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                );
              },
              initial: () {
                BlocProvider.of<JokesCubit>(context).getRandomJoke();
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              loadFailed: () {
                return Center(
                  child: Text('Failed to get a joke'),
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
