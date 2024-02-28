import 'package:flutter/material.dart';
import 'package:frinzy_chat/chat.dart';

void main ()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
    );
  }
}
