import 'package:e_com/Home_Screen/my_home_page.dart';
import 'package:flutter/material.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          margin: EdgeInsets.only(top: 60),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/like.png",
                      ),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Confirmation",
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "You have successfully",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "completed your payment procedure.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 280,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 40,
                  color: Colors.blue.shade900,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePageVeiw(
                                  title: '',
                                )));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue.shade900),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Back To Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ])),
    ));
  }
}
