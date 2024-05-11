import 'package:flutter/material.dart';

class TextBoxes extends StatelessWidget {
  final String titlu;
  final double marime;
  final Color culoare;
  const TextBoxes({
    required this.titlu,
    required this.marime,
    required this.culoare,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(titlu),
        Text(
          'Yessir',
          style: TextStyle(fontSize: marime, color: culoare),
        ),
      ]),
    );
  }
}
