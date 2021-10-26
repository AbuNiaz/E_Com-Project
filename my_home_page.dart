// ignore_for_file: deprecated_member_use

import 'package:e_com/Home_Screen/product_widget.dart';

import 'package:flutter/material.dart';

class MyHomePageVeiw extends StatelessWidget {
  const MyHomePageVeiw({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [],
      ),
      body: SingleChildScrollView(
          child: Container(
              width: 450,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 20, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(60)),
                          icon: Icon(Icons.search),
                          hintText: "Search Your Product",
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: Text("See all"))
                  ],
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildFlatButton("Man"),
                      buildFlatButton("Woman"),
                      buildFlatButton("Children"),
                      buildFlatButton("Others")
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Feature",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: Text("See all"))
                  ],
                ),
                MyProductList(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Sell",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: Text("See all")),
                  ],
                ),
                MyProductList(),
              ]))),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.only(top: 50, left: 30),
          children: <Widget>[
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'My Cart',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Favorite',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'My Orders',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Language',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

//
Padding buildFlatButton(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
    child: FlatButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      shape: StadiumBorder(),
      color: Colors.orangeAccent.shade700,
    ),
  );
}
