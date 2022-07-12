import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/colors.dart';

class SwiperComponent extends StatefulWidget {
  const SwiperComponent({super.key});

  @override
  State<SwiperComponent> createState() => _SwiperComponentState();
}

class _SwiperComponentState extends State<SwiperComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        children: [
          const Positioned(
            bottom: 70,
            right: -20,
            child: Image(
              image: AssetImage('assets/shoe_1.png'),
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
          const Positioned(
            left: 10,
            bottom: 70,
            child: Text(
              'Nike Air Max 270',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Positioned(
            left: 10,
            bottom: 50,
            child: Text(
              "Men's shoe",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          const Positioned(
            left: 10,
            bottom: 15,
            child: Text(
              "\$180",
              style: TextStyle(
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
