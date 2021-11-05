import 'package:e_com/Addrees_Page/addrees_home.dart';
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
              "8 Item",
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
      body: Container(
        child: ListView(children: [
          Column(
            children: [
              buildProductWithCart(
                "Pic3.jpg",
                "Exclusive T-Shirt",
                "40",
              ),
              buildProductWithCart(
                "Pic1.jpg",
                "T-Shirt",
                "30",
              ),
              buildProductWithCart(
                "Pic2.jpg",
                "Band T-Shirt",
                "35",
              ),
              buildProductWithCart("Pic4.jpg", "Cotton T-Shirt", "32"),
              buildProductWithCart(
                "Pic3.jpg",
                "Exclusive T-Shirt",
                "40",
              ),
              buildProductWithCart(
                "Pic1.jpg",
                "T-Shirt",
                "30",
              ),
              buildProductWithCart(
                "Pic2.jpg",
                "Band T-Shirt",
                "35",
              ),
              buildProductWithCart("Pic4.jpg", "Cotton T-Shirt", "32"),
            ],
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("\$435",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 70,
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainAddrees()));
                  },
                  color: Colors.white60,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 22, color: Colors.blue.shade900),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Padding buildProductWithCart(String img, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Image.asset(
              "images/$img",
              fit: BoxFit.cover,
            ),
          ),
          Column(children: [
            Text(
              "$title",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("\$ $price", style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "1",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ]),
            ),
          ]),
          Icon(Icons.delete)
        ],
      ),
    );
  }
}
