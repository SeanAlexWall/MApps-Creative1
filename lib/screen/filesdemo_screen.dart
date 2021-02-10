import 'package:Creative_1/utility/fileio.dart';
import 'package:flutter/material.dart';

class FilesDemoScreen extends StatelessWidget {
  static const routeName = "/filesDemoScreen";


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2));
    return Scaffold(
      appBar: AppBar(title: Text("Files Demo"),),
      body: Text(FileIO.fileContents),
    );
  }
  

}