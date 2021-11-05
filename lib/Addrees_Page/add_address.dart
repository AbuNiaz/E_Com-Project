import 'package:e_com/Payment/payment_home.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined),
          iconSize: 20,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create your Address.",
                    style: TextStyle(fontSize: 24, color: Colors.grey.shade700),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  buildInputFile(
                    lable: "Full Name",
                  ),
                  buildInputFile(lable: "Address lane"),
                  buildInputFile(
                    lable: "City",
                  ),
                  buildInputFile(
                    lable: "Postal Code",
                  ),
                  buildInputFile(lable: "Phone Number"),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  margin: EdgeInsets.only(top: 100),
                  padding: EdgeInsets.only(top: 0, left: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentHomePage()));
                    },
                    color: Colors.blue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Add Address",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
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

Widget buildInputFile({lable, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        lable,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black38),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
