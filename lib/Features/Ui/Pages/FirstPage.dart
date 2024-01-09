import 'package:flutter/material.dart';
import 'package:flutter_application_26/Features/Ui/Pages/Pages/SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/image 1.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
