import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileIO {
  static String fileContents = "didnt work";

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  static Future<File> get _localFile async {
    final path = await _localPath;
    print('$path');
    return File('$path/timestamp.txt');
  }



  static Future<File> writeTimeStamp() async {
    final file = await _localFile;
    var now = DateTime.now();
    return file.writeAsString(now.toString());
  }

  static Future<String> readTimeStamp() async {
    try{
      final file = await _localFile;

      String contents = await file.readAsString();

      return contents;
    } catch(e){
      return e.toString();
    }
  }

}