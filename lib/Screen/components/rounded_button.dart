import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor, static;
  RoundedButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color = Colors.blue,
      this.textColor = Colors.white,
      required this.static})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          color: Colors.blue.shade900,
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
