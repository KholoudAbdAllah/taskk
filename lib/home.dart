// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Home extends StatelessWidget {
  static const String routeName = 'Home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'WOW Pizza',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: OverflowBox(
            maxWidth: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: SvgPicture.asset(
                    'assets/images/face.svg',

                    height: 24,
                    width: 24,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SvgPicture.asset(
                    'assets/images/twitter.svg',
                    height: 24,
                    width: 24,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/pizza1.jpg',
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 4,
              height: 20,
            ),
            const Text(
              'Hi, I\'m the pizza Assistant, what can I help you order?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 29,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
