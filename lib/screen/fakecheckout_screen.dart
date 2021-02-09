import 'package:flutter/material.dart';

class FakeCheckoutScreen extends StatelessWidget{
  static const routeName = "FakeCheckoutScreen";
  static const routeNameAlt = "FakeCheckoutScreenAlt";


  static String startupMessage = "DefaultMessage";
  static ListView screenBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: screenBody,
      ),
    );
  }

  FakeCheckoutScreen(BuildContext context){
    screenBody = ListView(
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
            ],
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
            ],
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
    );
  }

  FakeCheckoutScreen.buyNow(BuildContext context, {Image image, String price, String name, String description}){
    print("at alt");
    print(image.toString());
    print(price);
    print(name);
    print(description);
    screenBody = ListView(
      children: [
        Card(
          elevation: 10.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: image,
                title: Text("$name"),
                subtitle: Text("$description"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                child: Row(
                  children: [
                    Text(price),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Your Total is: $price", style: Theme.of(context).textTheme.headline5,),
          ],
        ),
      ],
    );
  }

}