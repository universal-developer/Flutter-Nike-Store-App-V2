import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/components/new_release.dart';
import 'package:chip_list/chip_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _currentIndex = 0;

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
            icon: const Icon(
              CupertinoIcons.bell,
            ),
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
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: ChipList(
                listOfChipNames: [
                  'Popular',
                  'Men',
                  'Women',
                  'Kids',
                  'New Release'
                ],
                activeBgColorList: [Colors.black],
                inactiveBgColorList: [Colors.white],
                activeTextColorList: [Colors.white],
                inactiveTextColorList: [Colors.black],
                activeBorderColorList: [Colors.black],
                listOfChipIndicesCurrentlySeclected: [0],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
