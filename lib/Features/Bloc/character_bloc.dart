import 'package:flutter_application_26/Features/Data/Models/CharacModel.dart';
import 'package:flutter_application_26/Features/Data/Repository/Charac.repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_bloc.freezed.dart';
//part 'character_bloc.g.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacRepo characterRepo;
  CharacterBloc({required this.characterRepo})
      : super(const CharacterState.loading()) {
    on<_CharacterEventFetch>((event, emit) async {
      emit(const CharacterState.loading());

      try {
        CharacModel _characterLoaded =
            await characterRepo.getCharacterModel(event.page, event.name);
        emit(CharacterState.loaded(characterLoaded: _characterLoaded));
      } catch (_) {
        emit(const CharacterState.error());
      }
    });
  }
}
