import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/colors.dart';

class BottomNavBarFb2 extends StatelessWidget {
  const BottomNavBarFb2({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xff1E1E1E);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: backgroundColor,
      child: SizedBox(
        height: 66,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  icon: CupertinoIcons.home, selected: true, onPressed: () {}),
              IconBottomBar(
                  icon: CupertinoIcons.bag_fill,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  icon: CupertinoIcons.heart_fill,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  icon: CupertinoIcons.settings,
                  selected: false,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  IconBottomBar(
      {Key? key,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);

  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = whiteColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          splashRadius: 20,
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 35,
            color: selected ? primaryColor : const Color(0xffA8A8A8),
          ),
        ),
      ],
    );
  }
}
