import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/colors.dart';

class NewRealeaseComponent extends StatefulWidget {
  const NewRealeaseComponent({super.key});

  @override
  State<NewRealeaseComponent> createState() => _NewRealeaseComponentState();
}

class _NewRealeaseComponentState extends State<NewRealeaseComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: blackColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 15,
          bottom: 15,
        ),
        child: Stack(
          children: [
            const Positioned(
              right: -5,
              bottom: 5,
              child: Image(
                image: AssetImage('assets/release_nike.png'),
              ),
            ),
            Positioned(
              top: 10,
              child: Text(
                'New Realease',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: Text(
                'Nike Air',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Poppins',
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              top: 70,
              child: Text(
                'Max Plus',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Poppins',
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              top: 110,
              child: Text(
                'Classy White',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
            Positioned(
              top: 140,
              child: ElevatedButton(
                onPressed: () => {},
                child: const Text(
                  'Shop Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
