import 'package:flutter/material.dart';

class CafeCard extends StatelessWidget {
  final String name;
  const CafeCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(bottom: 10.0),
        // height: 200,
        // width: 200,
        color: Color.fromARGB(255, 151, 151, 151),
        child: Column(
          children: [
            // Image.network()
            Text(name),
          ],
        ));
  }
}
