import 'package:Creative_1/screen/fakeshopping_screen.dart';
import 'package:Creative_1/screen/filesdemo_screen.dart';
import 'package:Creative_1/screen/linkdemo_screeen.dart';
import 'package:Creative_1/utility/fileio.dart';
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
              RaisedButton(
                child: Text("Write timestamp to file", style: Theme.of(context).textTheme.button),
                onPressed: () => {FileIO.writeTimeStamp()}
                
              ),
              RaisedButton(
                child: Text("Read timestamp from file", style: Theme.of(context).textTheme.button),
                onPressed: () { 
                  FileIO.readTimeStamp()
                    .then((value)  {
                      FileIO.fileContents = value;
                      Navigator.pushNamed(context, FilesDemoScreen.routeName);
                    })
                    .whenComplete(()  { 
                      print("done");
                    });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}