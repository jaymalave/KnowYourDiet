import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                    'Nutrition Check, Simplified',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'monospace'),
                  ),
                  new Padding(padding: EdgeInsets.only(top: 20.0)),
                  new TextField(
                    decoration: new InputDecoration(
                      labelText: "Nutrient",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'monospace',
                      ),
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
                  new Padding(padding: EdgeInsets.only(top: 10.0)),
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
                        
                        borderSide: new BorderSide(
                          
                        ),
                        
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
                    onPressed: () {},
                    padding: const EdgeInsets.all(10),
                    splashColor: Colors.black,
                    textColor: Colors.black,
                    color: Colors.orange,
                    
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
