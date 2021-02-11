import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jokes/models/joke/joke.dart';
import 'package:jokes/repositories/jokes_api.dart';

part 'jokes_state.dart';
part 'jokes_cubit.freezed.dart';

class JokesCubit extends Cubit<JokesState> {
  final JokesApi jokesApi;

  JokesCubit({@required this.jokesApi})
      : assert(jokesApi != null),
        super(JokesState.initial());

  void getRandomJoke() async {
    emit(JokesState.loading());
    try {
      Joke joke = await jokesApi.getRandomJoke();
      emit(JokesState.loadSuccess(joke));
    } catch (e) {
      emit(JokesState.loadFailed());
    }
  }
}
