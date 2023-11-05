import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:teamsio/appbar.dart';
import 'package:teamsio/teams/results.dart';

class Teams extends StatefulWidget {
  final List<String> players;
  const Teams({super.key, required this.players});

  @override
  State<StatefulWidget> createState() => _Teams();
}

class _Teams extends State<Teams> {
  late List<String> _players;
  final List<String> quantities = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10"
  ];
  String quantity = "1";

  @override
  void initState() {
    super.initState();
    _players = widget.players;
  }

  void handleContinueClicked() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Results(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const TeamsAppBar(),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(spacing: 10, direction: Axis.vertical, children: [
              const Text("Quantidade de Times"),
              DropdownMenu<String>(
                width: 300,
                initialSelection: quantities.first,
                onSelected: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    quantity = value!;
                  });
                },
                dropdownMenuEntries:
                    quantities.map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
            ])),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: handleContinueClicked,
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.red)))),
                child: const Text("Continuar"),
              )),
        ));
  }
}
