import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Curso Flutterando'),
        ),
        body: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            )
           )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}
