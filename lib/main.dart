import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   // widgets.add(Text('Data 1'));
  //   // widgets.add(Text('Data 2'));
  //   for (int i = 0; i < 15; i++) {
  //     widgets.add(Text(
  //       'Data ke-' + i.toString(),
  //       style: TextStyle(fontSize: 50),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Latihan ListView'),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                child: Text('Tambah Data'),
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      'Data ke-' + counter.toString(),
                      style: TextStyle(fontSize: 50),
                    ));
                    counter++;
                  });
                },
              ),
              ElevatedButton(
                child: Text('Hapus Data'),
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                },
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    ));
  }
}
