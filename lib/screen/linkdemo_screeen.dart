import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkDemoScreen extends StatelessWidget{
  static const routeName = "/linkDemoScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Link Demo")),
      body: ListView(
        children: [
          //email
          RaisedButton(
            child: Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 30.0),
                Text(
                  "swall6@uco.edu", 
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onPressed: () async {
              Uri _emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'swall6@uco.edu',
              );
              if (await canLaunch(_emailLaunchUri.toString())){
                await launch(_emailLaunchUri.toString());
              }
              else{
                throw 'Could not launch ${_emailLaunchUri.toString()}';
              }
            }
          ),
          //Call
          RaisedButton(
            child: Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 30.0),
                Text(
                  "(405) 513-4730", 
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onPressed: () async {
              const url = "tel:+1 405 513 4730"; 
              if (await canLaunch(url)){
                await launch(url);
              }
              else{
                throw 'Could not launch $url';
              }
            }
          ),
          //Text
          RaisedButton(
            child: Row(
              children: [
                Icon(Icons.message),
                SizedBox(width: 30.0),
                Text(
                  "(405) 513-4730", 
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            onPressed: () async {
              const url = "sms:+1 405 513 4730"; 
              if (await canLaunch(url)){
                await launch(url);
              }
              else{
                throw 'Could not launch $url';
              }
            }
          ),
          //hehehe >:)
          RaisedButton(
            child: Text("Click me!", style: Theme.of(context).textTheme.headline5),
            onPressed: () async {
              const url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
              if (await canLaunch(url)){
                await launch(url);
              }
              else{
                throw 'Could not launch $url';
              }
            }
          ),
        ],
      ),
    );
  }

}