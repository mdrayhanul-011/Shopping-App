import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Shopping App'),
      title: 'Shopping App',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pulloverQuantity = 1;
  int tShirtQuantity = 1;
  int sportDressQuantity = 1;

  void updateTotalAmount() {
    setState(() {
      final total = (pulloverQuantity * 39) + (tShirtQuantity * 49) + (sportDressQuantity * 59);
      totalAmount = total;
    });
  }

  int totalAmount = 147;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'My Bag',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 32,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/t-shirt.png',
                          width: 100,
                          height: 110,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'T-Shirt',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                                ],
                              ),
                              Text('Color: Black, Size: L'),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (pulloverQuantity > 1) {
                                        setState(() {
                                          pulloverQuantity--;
                                          updateTotalAmount();
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.remove_circle, size: 30),
                                  ),
                                  Text('$pulloverQuantity'),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        pulloverQuantity++;
                                        updateTotalAmount();
                                      });
                                    },
                                    icon: const Icon(Icons.add_circle, size: 30),
                                  ),
                                  SizedBox(width: 60),
                                  Text(
                                    '\$${pulloverQuantity * 39}',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/jersey.png',
                          width: 100,
                          height: 110,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jersey',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                                ],
                              ),
                              Text('Color: Gray, Size: L'),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (tShirtQuantity > 1) {
                                        setState(() {
                                          tShirtQuantity--;
                                          updateTotalAmount();
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.remove_circle, size: 30),
                                  ),
                                  Text('$tShirtQuantity'),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        tShirtQuantity++;
                                        updateTotalAmount();
                                      });
                                    },
                                    icon: const Icon(Icons.add_circle, size: 30),
                                  ),
                                  SizedBox(width: 60),
                                  Text(
                                    '\$${tShirtQuantity * 49}',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/hoodie.png',
                          width: 100,
                          height: 110,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Hoodie',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                                ],
                              ),
                              Text('Color: Black, Size: M'),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (sportDressQuantity > 1) {
                                        setState(() {
                                          sportDressQuantity--;
                                          updateTotalAmount();
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.remove_circle, size: 30),
                                  ),
                                  Text('$sportDressQuantity'),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        sportDressQuantity++;
                                        updateTotalAmount();
                                      });
                                    },
                                    icon: const Icon(Icons.add_circle, size: 30),
                                  ),
                                  SizedBox(width: 60),
                                  Text(
                                    '\$${sportDressQuantity * 59}',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Total Amount

              SizedBox(height: 180),
              Text(
                'Total amount:                               \$$totalAmount',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              // Check Out Button
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.redAccent,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Congratulations! Purchases done'),
                        ),
                      );
                    },
                    child: Text(
                      'CHECK OUT',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
