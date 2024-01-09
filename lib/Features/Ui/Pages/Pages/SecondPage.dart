import 'package:flutter/material.dart';

import 'package:flutter_application_26/Features/Ui/Pages/Pages/ThirdPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/image 1.png',
              width: 360,
            ),
            SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThirdPage()),
                        );
                      },
                      child: Image.asset('assets/images/Rick.png'),
                    ),
                    Image.asset('assets/images/and.png'),
                    Image.asset('assets/images/Morty.png'),
                    Image.asset('assets/images/RickDown.png'),
                    Image.asset('assets/images/MortyDown.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
