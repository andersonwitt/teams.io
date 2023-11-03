import 'package:flutter/material.dart';
import 'package:teamsio/teams/players.dart';
import 'appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void goToPlayersPage(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Players(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const TeamsAppBar()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
              height: 170,
              width: double.infinity,
              child: Card(
                color: const Color(0xffCD6D27),
                child: InkWell(
                  onTap: () {
                    goToPlayersPage(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.groups_outlined,
                            color: Colors.white,
                            size: 48,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gerador de equipes",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "Cria sua equipe aleatoriamente.",
                                style: TextStyle(fontWeight: FontWeight.w200),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
