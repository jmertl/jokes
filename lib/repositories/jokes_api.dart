import 'dart:convert';

import 'package:jokes/models/joke/joke.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class JokesApi {
  static const baseUrl = 'https://official-joke-api.appspot.com';
  final http.Client httpClient;

  JokesApi({@required this.httpClient}) : assert(httpClient != null);

  Future<Joke> getRandomJoke() async {
    final randomJokeUrl = '$baseUrl/random_joke';
    final randomJokeResponse = await this.httpClient.get(randomJokeUrl);

    if (randomJokeResponse.statusCode != 200) {
      throw Exception('error getting random joke');
    }

    final randomJoke = Joke.fromJson(jsonDecode(randomJokeResponse.body));
    return randomJoke;
  }
}
