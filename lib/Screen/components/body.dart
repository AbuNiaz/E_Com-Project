import 'package:e_com/Screen/components/background.dart';
import 'package:e_com/Screen/components/rounded_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WelCome To E_COM",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent.shade700),
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Image.asset(
              "images/HomePic.jpg",
              height: 200,
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: RoundedButton(
                text: "LOGIN",
                press: () {},
                static: Colors.blue.shade900,
              ),
            ),
            RoundedButton(
              text: "SING UP",
              press: () {},
              static: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
