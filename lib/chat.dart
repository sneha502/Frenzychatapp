import 'package:flutter/material.dart';
import 'homepage.dart';

class Chat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Frinzy Chat',
        ),
      ),
      body: Homepage(),
    );
  }
}
