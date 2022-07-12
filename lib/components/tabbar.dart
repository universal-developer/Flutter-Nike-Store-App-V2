import 'package:flutter/material.dart';

class TabBarComponent extends StatefulWidget {
  const TabBarComponent({Key? key}) : super(key: key);

  @override
  State<TabBarComponent> createState() => _TabBarComponentState();
}

class _TabBarComponentState extends State<TabBarComponent> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        setState(() {
          isSelected = !isSelected;
        })
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: Text(
            'Hello world',
          ),
        ),
      ),
    );
  }
}
