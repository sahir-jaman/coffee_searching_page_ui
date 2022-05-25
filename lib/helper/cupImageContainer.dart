import 'dart:ui';

import 'package:flutter/material.dart';

class CupImageContainer extends StatelessWidget {
  final String imageName;
  final String cfName;
  final String price;
  const CupImageContainer(
      {super.key,
      required this.imageName,
      required this.cfName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image(
                image: AssetImage(
                  "assets/images/$imageName",
                ),
                fit: BoxFit.contain,
              ),
            ),

            //Coffee name
            Text(
              cfName,
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              "With Dark Milk",
              style:
                  TextStyle(fontSize: 12, color: Colors.grey, letterSpacing: 1),
            ),

            const SizedBox(
              height: 18.0,
            ),

            //price & rating
            Row(
              children: [
                const Text(
                  "\$ ",
                  style: TextStyle(color: Colors.orange),
                ),
                Text(price),
                const SizedBox(
                  width: 90.0,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: const Center(
                      child: Text(
                    "+",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
