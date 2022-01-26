import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Score Counter", home: Scorecard());
  }
}

class Scorecard extends StatefulWidget {
  const Scorecard({Key? key}) : super(key: key);

  @override
  _ScorecardState createState() => _ScorecardState();
}

class _ScorecardState extends State<Scorecard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          Center(
            child: Text(
              "Score is",
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              "0",
              style: TextStyle(
                  color: Colors.indigoAccent[700],
                  fontSize: 125,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  color: Colors.red,
                  onPressed: () {},
                  child: Text(
                    "Increase",
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                width: 40,
              ),
              RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    "Decrease",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
