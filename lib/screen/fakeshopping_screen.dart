import 'package:Creative_1/screen/fakecart_screen.dart';
import 'package:flutter/material.dart';

class FakeShoppingScreen extends StatelessWidget{
  static const routeName = "/fakeShoppingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online "Shopping"'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () => Navigator.pushNamed(context, FakeCartScreen.routeName),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                      "https://f4.bcbits.com/img/a3976433219_10.jpg"
                    ),
                  ListTile(
                    leading: Text('\$10.00'),
                    title: Text("Limbo"),
                    subtitle: Text("Ok Goodnight"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text('Add to "Cart"'),
                    onPressed: () => print('Added to "Cart"!'),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("images/apple.jpg"),
                  ListTile(
                    leading: Text('\$1.00/lb'),
                    title: Text("Gala Apple"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text('Add to "Cart"'),
                    onPressed: () => print('Added to "Cart"!'),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("images/dragonfruit.png"),
                  ListTile(
                    leading: Text('\$3.00/ea'),
                    title: Text("Dragonfruit"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text('Add to "Cart"'),
                    onPressed: () => print('Added to "Cart"!'),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("images/orange.jpg"),
                  ListTile(
                    leading: Text('\$1.50/lb'),
                    title: Text("Orange"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text('Add to "Cart"'),
                    onPressed: () => print('Added to "Cart"!'),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("images/pineapple.png"),
                  ListTile(
                    leading: Text('\$3.00/ea'),
                    title: Text("Pineapple"),
                    subtitle: Text("PPAP"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text('Add to "Cart"'),
                    onPressed: () => print('Added to "Cart"!'),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("images/strawberry.png"),
                  ListTile(
                    leading: Text('\$3.50/lb'),
                    title: Text("Strawberries"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text('Add to "Cart"'),
                    onPressed: () => print('Added to "Cart"!'),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

}