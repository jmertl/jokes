part of 'jokes_cubit.dart';

@freezed
abstract class JokesState with _$JokesState {
  const factory JokesState.initial() = _Initial;
  const factory JokesState.loading() = _Loading;
  const factory JokesState.loadSuccess(Joke joke) = _LoadSuccess;
  const factory JokesState.loadFailed() = _LoadFailed;

}
