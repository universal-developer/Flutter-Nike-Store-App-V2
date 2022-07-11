import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                CupertinoIcons.text_alignleft,
              ),
              onPressed: () {},
              color: blackColor,
              splashRadius: 20,
            ),
            const Text('NIKE')
          ],
        ),
      ),
      body: Container(
        child: const Center(
          child: Text(
            '👋🏻',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
