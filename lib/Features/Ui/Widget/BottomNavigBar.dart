import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(110, 121, 140, 1),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 15,
            selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 15),
            backgroundColor: Colors.black12,
            items: const [
              BottomNavigationBarItem(
                  label: "Персонажи",
                  icon: Icon(Icons.people, size: 21, color: Colors.amber)),
              BottomNavigationBarItem(
                  label: 'Локации',
                  icon: Icon(
                    Icons.location_city,
                    size: 21,
                  )),
              BottomNavigationBarItem(
                  label: "Эпизоды",
                  icon: Icon(
                    Icons.tv,
                    size: 21,
                  )),
              BottomNavigationBarItem(
                  label: 'Настройки',
                  backgroundColor: Colors.black12,
                  icon: Icon(
                    Icons.settings,
                    size: 21,
                  )),
            ]),
      ),
    );
  }
}
