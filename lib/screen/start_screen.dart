import 'package:Creative_1/screen/fakeshopping_screen.dart';
import 'package:Creative_1/screen/linkdemo_screeen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  static const routeName = "/startScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Creative 1 Demo")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(backgroundColor: Colors.grey[400],),
              RaisedButton(
                child: Text('Online "Shopping"', style: Theme.of(context).textTheme.button),
                onPressed: () => Navigator.pushNamed(context, FakeShoppingScreen.routeName),
              ),
              RaisedButton(
                child: Text("Link Demo", style: Theme.of(context).textTheme.button),
                onPressed: () => Navigator.pushNamed(context, LinkDemoScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}