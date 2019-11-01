import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Material App Title",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.orange,
        ),
        home: MyHomePage(title: "My Home Page"));
  }
}

class MyHomePage extends StatelessWidget {
final String title;

MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint("as");
        },
        child: Icon(Icons.add_to_queue),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Butona Basma Sayısı",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          Text("5"),
        ],
      )),
    );
  }
}
