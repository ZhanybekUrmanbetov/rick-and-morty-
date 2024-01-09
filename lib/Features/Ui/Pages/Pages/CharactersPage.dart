import 'package:flutter/material.dart';
import 'package:flutter_application_26/Features/Bloc/character_bloc.dart';
import 'package:flutter_application_26/Features/Data/Repository/Charac.repo.dart';
import 'package:flutter_application_26/Features/Ui/Pages/Pages/SearchPage.dart';
import 'package:flutter_application_26/Features/Ui/Widget/BottomNavigBar.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({Key? key}) : super(key: key);

  final repository = CharacRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        toolbarHeight: 10.0,
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: repository),
        child: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 18, 32, 47)),
            child: const SearchPage()),
      ),
    );
  }
}
