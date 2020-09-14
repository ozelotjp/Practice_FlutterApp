import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class IndexPage extends StatefulWidget {
  _IndexPage createState() => _IndexPage();
}

class _IndexPage extends State<IndexPage> {
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('todo').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError){
          return new Text('Error: ${snapshot.error}');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          default:
            return new ListView(
              children: snapshot.data.docs.map((DocumentSnapshot document) {
                return new ListTile(
                  title: new Text(document.data()["text"]),
                );
              }).toList(),
            );
        }
      },
    );
  }

  // Widget build(BuildContext context){
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('ShareTodo'),
  //     ),
  //     body: ListView.builder(
  //       itemBuilder: (BuildContext context, int index) {
  //         return Card(
  //           child: ListTile(
  //             title: Text(list[index]),
  //             onTap: () {
  //               showDialog(
  //                 context: context,
  //                 builder: (_) {
  //                   return AlertDialog(
  //                     title: Text(list[index]),
  //                     actions: <Widget>[
  //                       FlatButton(
  //                         child: Text("削除"),
  //                         onPressed: () => Navigator.pop(context),
  //                       ),
  //                       FlatButton(
  //                         child: Text("閉じる"),
  //                         onPressed: () => Navigator.pop(context),
  //                       ),
  //                     ],
  //                   );
  //                 }
  //               );
  //             },
  //           ),
  //         );
  //       },
  //       itemCount: list.length,
  //     ),
  //   );
  // }
}
