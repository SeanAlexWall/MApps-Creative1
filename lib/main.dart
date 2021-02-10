import 'package:Creative_1/screen/fakecart_screen.dart';
import 'package:Creative_1/screen/fakecheckout_screen.dart';
import 'package:Creative_1/screen/fakeshopping_screen.dart';
import 'package:Creative_1/screen/filesdemo_screen.dart';
import 'package:Creative_1/screen/linkdemo_screeen.dart';
import 'package:Creative_1/screen/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Creative1App());
}

class Creative1App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cretive Work Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.light,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName : (context) => StartScreen(),
        LinkDemoScreen.routeName : (context) => LinkDemoScreen(),
        FakeShoppingScreen.routeName : (context) => FakeShoppingScreen(),
        FakeCartScreen.routeName : (context) => FakeCartScreen(),
        FakeCheckoutScreen.routeName : (context) => FakeCheckoutScreen(context),
        FilesDemoScreen.routeName : (context) => FilesDemoScreen()
      },
    );
  }
}

