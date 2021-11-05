import 'package:e_com/Addrees_Page/addrees_home.dart';
import 'package:e_com/Confirm_Order/order_page.dart';
import 'package:flutter/material.dart';

class CheckDetails extends StatelessWidget {
  const CheckDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.backpack_outlined),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Checkout",
              style: TextStyle(fontSize: 27),
            ),
          ),
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
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 120,
            width: double.infinity,
            color: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kenduly, Amdai, Joypurhat-5900 ",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("House no:324", style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Road no:5", style: TextStyle(fontSize: 15))
                    ],
                  ),
                  ColorSelect(color: Colors.blue, isSelected: false),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 160,
            width: 340,
            color: Colors.white60,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 14.0, right: 14.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SubTotal"),
                      Text("\$ 70.00"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 14.0, right: 14.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount"),
                      Text("\$5"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 14.0, right: 14.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping"),
                      Text("\$ 10"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13, left: 14, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$ 72.00",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            minWidth: 90,
            height: 40,
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ConfirmOrder()));
            },
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue.shade900),
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              "Buy",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
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
