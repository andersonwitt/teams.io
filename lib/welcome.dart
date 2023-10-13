import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Row(children: [
            Icon(
              Icons.sports_volleyball_outlined,
              color: Colors.red,
              size: 30.0,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10), child: Text('Teams PRO'))
          ])),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              height: 120,
              width: double.infinity,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('lalaland'),
                ),
              )),
        ),
      ),
    );
  }
}
