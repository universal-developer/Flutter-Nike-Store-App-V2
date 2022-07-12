import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/colors.dart';

class SwiperComponent extends StatelessWidget {
  /*String name;
  String category;
  String price;
  String color;
  String image;*/
  String name, category, price, image;
  Color color;

  SwiperComponent({
    required this.name,
    required this.category,
    required this.price,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        children: [
          Positioned(
            bottom: 70,
            right: -20,
            child: Image(
              image: AssetImage(image),
              width: 300,
            ),
          ),
          Positioned(
            left: 0,
            top: 10,
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.heart,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () => {},
            ),
          ),
          Positioned(
            left: 10,
            bottom: 70,
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 50,
            child: Text(
              category,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 15,
            child: Text(
              price,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    CupertinoIcons.plus_circle_fill,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
