import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "My Cart",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "4 Item",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.backpack_outlined),
        ),
        backgroundColor: Colors.white54,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 850,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Column(
                children: [
                  buildProductWithCart(),
                  buildProductWithCart(),
                  buildProductWithCart(),
                  buildProductWithCart(),
                  buildProductWithCart(),
                  buildProductWithCart(),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BottonText(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildProductWithCart() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Image.asset(
          "images/Pic1.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BottonText extends StatelessWidget {
  const BottonText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          minWidth: 50,
          height: 40,
          color: Colors.blue.shade900,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue.shade900),
              borderRadius: BorderRadius.circular(50)),
          child: Text(
            "CONTINUE ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
