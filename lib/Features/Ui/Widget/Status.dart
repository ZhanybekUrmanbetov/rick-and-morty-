import 'package:flutter/material.dart';

enum LiveState { alive, dead, unknown }

class Status extends StatelessWidget {
  final LiveState livestate;
  const Status({Key? key, required this.livestate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.circle,
            size: 11,
            color: livestate == LiveState.alive
                ? Colors.lightGreen[400]
                : livestate == LiveState.dead
                    ? Colors.red
                    : Colors.white),
        const SizedBox(
          width: 6,
        ),
        Text(
          livestate == LiveState.dead
              ? "DEAD"
              : livestate == LiveState.alive
                  ? 'Alive'
                  : 'Unknown',
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
