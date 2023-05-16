// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'cafeCard.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        height: 300.0,
        color: const Color(0xFF186FA0),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 80.0),
              child: Text("nustro",
                  style: TextStyle(
                    fontFamily: 'LuckySunshine',
                    fontSize: 80.0,
                    color: Colors.white,
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15), // shadow color
                    spreadRadius: 2, // spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  contentPadding: EdgeInsets.all(20.0),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return CafeCard(name: "Dreamville");
            }),
      ),
    ]));
  }
}