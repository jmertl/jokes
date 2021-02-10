// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Joke _$_$_JokeFromJson(Map<String, dynamic> json) {
  return _$_Joke(
    json['id'] as int,
    json['type'] as String,
    json['setup'] as String,
    json['punchline'] as String,
  );
}

Map<String, dynamic> _$_$_JokeToJson(_$_Joke instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'setup': instance.setup,
      'punchline': instance.punchline,
    };
