import 'package:flutter/material.dart';
import 'package:flutter_application_26/Features/Bloc/character_bloc.dart';
import 'package:flutter_application_26/Features/Data/Models/CharacModel.dart';
import 'package:flutter_application_26/Features/Ui/Widget/Custon_list_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late CharacModel _currentCharacter;
  List<Results> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchStr = '';

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<CharacterBloc>()
          .add(const CharacterEvent.fetch(name: '', page: 1));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharacterBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, left: 16, right: 16),
          child: TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              fillColor: Color.fromRGBO(21, 42, 58, 1),
              prefixIcon: Icon(Icons.search),
              hintText: 'Найти персонажа',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
              suffix: Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                ),
                child: Image.asset(
                  'assets/images/Group.png',
                  color: Colors.white,
                ),
              ),
            ),
            style: TextStyle(color: Color.fromARGB(137, 231, 216, 216)),
            onChanged: (value) {
              _currentPage = 1;
              _currentResults = [];
              _currentSearchStr = value;
              context
                  .read<CharacterBloc>()
                  .add(CharacterEvent.fetch(name: value, page: _currentPage));
            },
          ),
        ),
        Expanded(
          child: state.when(
            loading: () {
              return Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Загрузка...'),
                    ]),
              );
            },
            loaded: (characterLoaded) {
              _currentCharacter = characterLoaded;
              _currentResults = _currentCharacter.results;
              return _currentResults.isNotEmpty
                  ? _customListView(_currentResults)
                  : const SizedBox();
            },
            error: () => const Text('Ничего не найдено...'),
          ),
        ),
      ],
    );
  }

  Widget _customListView(List<Results> currentResults) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final result = currentResults[index];
          return Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 16, top: 3, bottom: 3),
            child: CustomListTile(result: result),
          );
        },
        shrinkWrap: true,
        separatorBuilder: (_, index) => const SizedBox(
              height: 5,
            ),
        itemCount: currentResults.length);
  }
}
