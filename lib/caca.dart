import 'package:flutter/material.dart';
import 'package:components/placeaddress.dart';
import 'package:components/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Pladic(
              circleColor: Colors.purple,
              iconn: Icons.school_rounded,
              numeloc: 'UPB',
              adresa: 'Splaiul Independentei 313',
            ),
            const TextBoxes(
              titlu: 'Ce misto',
              marime: 23,
              culoare: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
