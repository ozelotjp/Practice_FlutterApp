import 'package:flutter/material.dart';
import 'package:share_todo/page/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShareTodo',
      color: Colors.green,
      home: IndexPage(),
    );
  }
}
