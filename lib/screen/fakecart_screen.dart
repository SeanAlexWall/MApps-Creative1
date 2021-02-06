import 'package:flutter/material.dart';

class FakeCartScreen extends StatelessWidget{
  static const routeName = "/FakeCartScreen"; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [                  
                  ListTile(
                    leading: Image.network(
                      "https://f4.bcbits.com/img/a3976433219_10.jpg"
                    ),
                    title: Text("Limbo"),
                    subtitle: Text("Ok Goodnight"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('\$10.00'),
                      ],
                    ),
                  ),
                ]
              ),
            ),
            Card(
              elevation: 10.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Image.asset("images/apple.jpg"),
                    title: Text("Gala Apple"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                    child: Row(
                      children: [
                        Text('\$1.00'),
                      ],
                    ),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("\$10.00", style: Theme.of(context).textTheme.headline5,),
                Text("\$  1.00", style: Theme.of(context).textTheme.headline5,),
                Text("+_______", style: Theme.of(context).textTheme.headline5,),
                Text("Your Total is:   \$11.00", style: Theme.of(context).textTheme.headline5,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}