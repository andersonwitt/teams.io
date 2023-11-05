import 'package:flutter/material.dart';
import 'package:teamsio/appbar.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<StatefulWidget> createState() => _Results();
}

class _Results extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const TeamsAppBar(),
      ),
      body: const Text("text"),
    );
  }
}
