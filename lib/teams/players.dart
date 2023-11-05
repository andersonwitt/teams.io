import 'package:flutter/material.dart';
import 'package:teamsio/appbar.dart';
import 'package:teamsio/teams/teams.dart';

class Players extends StatefulWidget {
  const Players({Key? key}) : super(key: key);

  @override
  State<Players> createState() => _Players();
}

class _Players extends State<Players> {
  final fieldText = TextEditingController();
  String _player = "";
  List<String> _list = [
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
    "anderson",
  ];

  void handlePlayerRemoved(int index) {
    List<String> players = _list.toList();

    players.removeAt(index);

    setState(() {
      _list = players.toList();
    });
  }

  void handleContinueClicked() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Teams(
            players: _list,
          ),
        ));
  }

  void handlePlayerChanged(String value) {
    setState(() {
      _player = value;
    });
  }

  void handlePlayerAddClicked() {
    List<String> players = _list.toList();

    players.add(_player);

    fieldText.clear();

    setState(() {
      _list = players.toList();
      _player = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const TeamsAppBar(),
      ),
      body: SafeArea(
          child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 10,
                          children: [
                            const Text(
                              "Jogador",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextField(
                                onChanged: handlePlayerChanged,
                                controller: fieldText,
                                style:
                                    const TextStyle(color: Color(0xff000000)),
                                decoration: InputDecoration(
                                    filled: true,
                                    border: InputBorder.none,
                                    fillColor: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer)),
                            SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: handlePlayerAddClicked,
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.zero,
                                              side: BorderSide(
                                                  color: Colors.red)))),
                                  child: const Text("Adicionar Jogador"),
                                )),
                            SizedBox(
                              width: double.infinity,
                              height: constraints.maxHeight - 180,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Jogadores"),
                                      const Divider(),
                                      SizedBox(
                                          height: constraints.maxHeight - 270,
                                          child: SingleChildScrollView(
                                              child: Column(
                                            children: _list
                                                .asMap()
                                                .entries
                                                .map((e) => Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(e.value),
                                                        IconButton(
                                                            onPressed: () {
                                                              handlePlayerRemoved(
                                                                  e.key);
                                                            },
                                                            icon: const Icon(
                                                              Icons
                                                                  .delete_outline,
                                                              color:
                                                                  Colors.white,
                                                              size: 30.0,
                                                            )),
                                                      ],
                                                    ))
                                                .toList(),
                                          )))
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: handleContinueClicked,
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.red)))),
              child: const Text("Continuar"),
            )),
      ),
    );
  }
}
