import 'package:e_com/Cart_Button/cart.dart';
import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  const Botton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        color: Colors.white24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              minWidth: 50,
              height: 40,
              color: Colors.blue.shade900,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue.shade900),
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                "ADD TO CART",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            MaterialButton(
              minWidth: 50,
              height: 40,
              onPressed: () {},
              color: Colors.white60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "BUY NOW",
                style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
              ),
            ),
          ],
        ));
  }
}
