import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Future<Text> getData() async {
    http.Response response = await http.get(
        Uri.parse(
            "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/random?number=1&tags=vegetarian%2Cdessert"),
        headers: {
          "Accept": "application/json",
          "x-rapidapi-key":
              "035ed76516msh29f069a8083e9eap1be7eajsn584eb5c3b005",
          "x-rapidapi-host":
              "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com"
        });

    var data = jsonDecode(response.body);

    var text = data["recipes"][0]["title"];

    this.setState(() {
      return new Text(
        '$text',
        style: new TextStyle(color: Colors.white),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KnowYourDiet',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Know Your Diet'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: new Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.black,
            child: new Container(
              child: new Center(
                child: new Column(children: [
                  new Padding(padding: EdgeInsets.only(top: 100.0)),
                  new Text(
                    'Confused what to cook today?',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'monospace'),
                  ),
                  new Padding(padding: EdgeInsets.only(top: 20.0)),
                  new TextField(
                    decoration: new InputDecoration(
                      labelText: "Meal",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'monospace',
                      ),
                      fillColor: Colors.black,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                    ),
                  ),
                  new RaisedButton(
                    child: Text("Submit"),
                    onPressed: getData,
                    padding: const EdgeInsets.all(10),
                    splashColor: Colors.black,
                    textColor: Colors.black,
                    color: Colors.orange,
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
