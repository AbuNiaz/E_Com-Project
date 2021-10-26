import 'package:flutter/material.dart';

class ProductsDetails extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;

  ProductsDetails(this.img, this.title, this.price, this.context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined),
            iconSize: 20,
            color: Colors.black,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          backgroundColor: Colors.white54,
        ),
        body: Stack(
          children: [
            Image.asset(
              "images/$img",
              height: 400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 300),
                height: MediaQuery.of(context).size.height / 2.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Expanded(
                        child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 9.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title),
                            SizedBox(
                              height: 5,
                            ),
                            Text("\$ $price"),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Discription",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                                "idlkgdfklg klldkg kfklj;doeit ikfjdlg ijkglg jeig igjgg rpohiy iowgkf rlf jlgjg sedgj iof jkhf bhjdwjkf kjhfjf v"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Color"),
                                    Row(
                                      children: [
                                        ColorDot(
                                          isSelected: true,
                                          color: Colors.black,
                                        ),
                                        ColorDot(
                                          color: Color(0xFFF8C078),
                                          isSelected: false,
                                        ),
                                        ColorDot(
                                          color: Colors.orange,
                                          isSelected: true,
                                        ),
                                        ColorDot(
                                          color: Color(0xFFF8C078),
                                          isSelected: false,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text("Size"),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
                    Botton(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}

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
              onPressed: () {},
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
