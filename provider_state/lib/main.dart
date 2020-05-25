import 'package:flutter/material.dart';
import 'package:providerstate/models/cart.dart';
import 'package:providerstate/screens/checkout_page.dart';
//import 'LiftinigUpState.dart';
import 'models/item.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create:(context)=> Cart(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Item> items = [
    Item(title: 'laptop', price: 500.0),
    Item(title: 'iphone', price: 400.0),
    Item(title: 'keyboard', price: 40.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context , cart , child){
      return Scaffold(
          appBar: AppBar(
            title: Text('Provider Shopping Cart'),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(6),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.shopping_cart),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return CheckoutPage();
                            }));
                      },
                    ),
                    Text(cart.count.toString()
                    ),
                  ],
                ),
              )
            ],
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index].title),
                  subtitle: Text(items[index].price.toString()),
                  trailing: Icon(Icons.add),
                  onTap: () {
                    cart.add(items[index]);
                    print({Cart().count});
                  },
                );
              }));
    });
  }
}
