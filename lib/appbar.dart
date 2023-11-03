import 'package:flutter/material.dart';

class TeamsAppBar extends StatelessWidget {
  const TeamsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Icon(
        Icons.sports_volleyball_outlined,
        color: Colors.red,
        size: 30.0,
      ),
      Padding(padding: EdgeInsets.only(left: 10), child: Text('Teams PRO'))
    ]);
  }
}
