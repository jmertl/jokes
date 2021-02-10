import 'package:flutter/material.dart';
import 'package:jokes/presentation/main_page.dart';
import 'package:http/http.dart' as http;
import 'package:jokes/repositories/jokes_api.dart';

import 'models/joke/joke.dart';

main(List<String> args) async {
  JokesApi jokesApi = JokesApi(httpClient: http.Client());
  Joke joke = await jokesApi.getRandomJoke();
  print(joke.setup);
  print(joke.punchline);
  runApp(MainPage());
}
