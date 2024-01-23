import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: const Ball(),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(
            () {
              ballnumber = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
