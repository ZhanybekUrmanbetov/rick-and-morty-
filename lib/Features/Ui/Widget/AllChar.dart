import 'package:flutter/material.dart';

class AllChar extends StatelessWidget {
  const AllChar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 344,
          height: 24,
          child: Text(
            ' ВСЕГО ПЕРСОНАЖЕЙ: 200',
            style: TextStyle(
              color: Color(0xFF5B6975),
              fontSize: 15,
              fontWeight: FontWeight.w500,
              height: 0.16,
              letterSpacing: 1.50,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 12),
          child: Image.asset('assets/images/4toch.png'),
        )
      ],
    ));
  }
}
