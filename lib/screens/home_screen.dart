import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              splashRadius: 20,
            ),
            InkWell(
              onTap: () => {},
              child: const Image(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.bell),
              onPressed: () => {},
              splashRadius: 20,
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          '👋🏻',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
