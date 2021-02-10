// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Joke _$JokeFromJson(Map<String, dynamic> json) {
  return _Joke.fromJson(json);
}

/// @nodoc
class _$JokeTearOff {
  const _$JokeTearOff();

// ignore: unused_element
  _Joke call(int id, String type, String setup, String punchline) {
    return _Joke(
      id,
      type,
      setup,
      punchline,
    );
  }

// ignore: unused_element
  Joke fromJson(Map<String, Object> json) {
    return Joke.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Joke = _$JokeTearOff();

/// @nodoc
mixin _$Joke {
  int get id;
  String get type;
  String get setup;
  String get punchline;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res>;
  $Res call({int id, String type, String setup, String punchline});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res> implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  final Joke _value;
  // ignore: unused_field
  final $Res Function(Joke) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object setup = freezed,
    Object punchline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      type: type == freezed ? _value.type : type as String,
      setup: setup == freezed ? _value.setup : setup as String,
      punchline: punchline == freezed ? _value.punchline : punchline as String,
    ));
  }
}

/// @nodoc
abstract class _$JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$JokeCopyWith(_Joke value, $Res Function(_Joke) then) =
      __$JokeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type, String setup, String punchline});
}

/// @nodoc
class __$JokeCopyWithImpl<$Res> extends _$JokeCopyWithImpl<$Res>
    implements _$JokeCopyWith<$Res> {
  __$JokeCopyWithImpl(_Joke _value, $Res Function(_Joke) _then)
      : super(_value, (v) => _then(v as _Joke));

  @override
  _Joke get _value => super._value as _Joke;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object setup = freezed,
    Object punchline = freezed,
  }) {
    return _then(_Joke(
      id == freezed ? _value.id : id as int,
      type == freezed ? _value.type : type as String,
      setup == freezed ? _value.setup : setup as String,
      punchline == freezed ? _value.punchline : punchline as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Joke implements _Joke {
  _$_Joke(this.id, this.type, this.setup, this.punchline)
      : assert(id != null),
        assert(type != null),
        assert(setup != null),
        assert(punchline != null);

  factory _$_Joke.fromJson(Map<String, dynamic> json) =>
      _$_$_JokeFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String setup;
  @override
  final String punchline;

  @override
  String toString() {
    return 'Joke(id: $id, type: $type, setup: $setup, punchline: $punchline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Joke &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.setup, setup) ||
                const DeepCollectionEquality().equals(other.setup, setup)) &&
            (identical(other.punchline, punchline) ||
                const DeepCollectionEquality()
                    .equals(other.punchline, punchline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(setup) ^
      const DeepCollectionEquality().hash(punchline);

  @JsonKey(ignore: true)
  @override
  _$JokeCopyWith<_Joke> get copyWith =>
      __$JokeCopyWithImpl<_Joke>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JokeToJson(this);
  }
}

abstract class _Joke implements Joke {
  factory _Joke(int id, String type, String setup, String punchline) = _$_Joke;

  factory _Joke.fromJson(Map<String, dynamic> json) = _$_Joke.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get setup;
  @override
  String get punchline;
  @override
  @JsonKey(ignore: true)
  _$JokeCopyWith<_Joke> get copyWith;
}
