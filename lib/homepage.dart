import 'package:components/test.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextBoxes(
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
