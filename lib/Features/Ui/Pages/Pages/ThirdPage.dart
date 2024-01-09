import 'package:flutter/material.dart';
import 'package:flutter_application_26/Features/Ui/Pages/Pages/CharactersPage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/image 1.png',
              width: 380,
            ),
            Positioned(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CharactersPage()),
                        );
                      },
                      child: Image.asset("assets/images/Rick.png"),
                    ),
                    Image.asset('assets/images/and.png'),
                    Image.asset("assets/images/Morty.png"),
                    Image.asset('assets/images/RickandMorty.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
