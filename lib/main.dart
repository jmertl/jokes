import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/bloc/simple_bloc_observer.dart';
import 'package:jokes/presentation/main_page.dart';
import 'package:http/http.dart' as http;
import 'package:jokes/repositories/jokes_api.dart';


main(List<String> args) async {
  Bloc.observer = SimpleBlocObserver();

  JokesApi jokesApi = JokesApi(httpClient: http.Client());

  runApp(MainPage(
    jokesApi: jokesApi,
  ));
}
