import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/components/new_release.dart';

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
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.text_alignleft,
          ),
          onPressed: () {},
          splashRadius: 20,
        ),
        title: InkWell(
          onTap: () => {},
          child: const Image(
            image: AssetImage(
              'assets/logo.png',
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () => {},
            splashRadius: 20,
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            NewRealeaseComponent(),
          ],
        ),
      ),
    );
  }
}
