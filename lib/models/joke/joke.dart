
import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke.freezed.dart';
part 'joke.g.dart';

@freezed
abstract class Joke with _$Joke {
  factory Joke(int id, String type, String setup, String punchline) = _Joke;
	
  factory Joke.fromJson(Map<String, dynamic> json) =>
			_$JokeFromJson(json);
}
