import 'package:e_com/Addrees_Page/add_address.dart';
import 'package:e_com/Payment/payment_home.dart';
import 'package:flutter/material.dart';

class MainAddrees extends StatelessWidget {
  const MainAddrees({Key? key}) : super(key: key);

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
        margin: EdgeInsets.only(top: 20, left: 20, right: 15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
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
                            Text("House no:324",
                                style: TextStyle(fontSize: 15)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Road no:5", style: TextStyle(fontSize: 15))
                          ],
                        ),
                        ColorSelect(color: Colors.blue, isSelected: true),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 100,
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
                              "Asulia, Savar, Dhaka-1205 ",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("House no:24", style: TextStyle(fontSize: 15)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Road no:8", style: TextStyle(fontSize: 15))
                          ],
                        ),
                        ColorSelect(color: Colors.black, isSelected: false),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 240),
              height: 150,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 90,
                    height: 40,
                    color: Colors.blueGrey,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddAddress()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue.shade900),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Add Address",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    minWidth: 90,
                    height: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentHomePage()));
                    },
                    color: Colors.white60,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Continue To Payment",
                      style:
                          TextStyle(fontSize: 20, color: Colors.blue.shade900),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorSelect extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorSelect({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
