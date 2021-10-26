import 'package:e_com/Home_Screen/product_details.dart';
import 'package:flutter/material.dart';

class MyProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildColumnWithRow("black_top.png", "Women T-Shirt", "44", context),
          buildColumnWithRow("Pic1.jpg", "T-Shirt", "30", context),
          buildColumnWithRow("Pic2.jpg", "Band T-Shirt", "35", context),
          buildColumnWithRow("Pic3.jpg", "Exclusive T-Shirt", "40", context),
          buildColumnWithRow("Pic4.jpg", "Cotton T-Shirt", "32", context),
          buildColumnWithRow("Pic5.jpg", "Marvel T-Shirt", "42", context),
          buildColumnWithRow("black_top.png", "Women T-Shirt", "44", context),
          buildColumnWithRow("Pic1.jpg", "T-Shirt", "30", context),
          buildColumnWithRow("Pic2.jpg", "Band T-Shirt", "35", context),
          buildColumnWithRow("Pic3.jpg", "Exclusive T-Shirt", "40", context),
          buildColumnWithRow("Pic4.jpg", "Cotton T-Shirt", "32", context),
          buildColumnWithRow("Pic5.jpg", "Marvel T-Shirt", "42", context),
        ],
      ),
    );
  }

  GestureDetector buildColumnWithRow(
      String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductsDetails(img, title, price, context),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/$img",
                  fit: BoxFit.cover,
                  height: 400,
                  width: 300,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "\$ $price",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "$title",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
