import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/colors.dart';
import 'package:flutter_nike_storev2_app/components/bottom_nav_bar.dart';
import 'package:flutter_nike_storev2_app/components/new_release.dart';
import 'package:chip_list/chip_list.dart';
import 'package:flutter_nike_storev2_app/components/swiper.dart';

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
      extendBody: true,
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
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const NewRealeaseComponent(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
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
              SizedBox(
                height: 390,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: false,
                  ),
                  items: [
                    SwiperComponent(
                        name: 'Air Max Shoe 270',
                        category: "Men's shoe",
                        price: '\$180',
                        color: blueColor,
                        image: 'assets/shoe_1.png'),
                    SwiperComponent(
                        name: 'Air Max Shoe 1000',
                        category: "Men's shoe",
                        price: '\$580',
                        color: purpleColor,
                        image: 'assets/shoe_1.png'),
                    SwiperComponent(
                        name: 'Air Max Shoe 590',
                        category: "Men's shoe",
                        price: '\$380',
                        color: pinkColor,
                        image: 'assets/shoe_1.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarFb2(),
    );
  }
}
