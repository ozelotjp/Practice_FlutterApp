import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPage createState() => _IndexPage();
}

class _IndexPage extends State<IndexPage> {
  final list = ['foo', 'bar', 'meow'];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ShareTodo'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(list[index]),
              onTap: () {

              },
            ),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}

class _dialog {
  Widget build(BuildContext context){
    return Scaffold(

    )
  }
}