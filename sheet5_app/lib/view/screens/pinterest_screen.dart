import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import '../../model/screen_model.dart';
import '../components/pinterest_component.dart';

class PinterestScreen extends StatelessWidget {
  List<ScreenModel> cards = [
  ScreenModel(
      image:
      'https://i.pinimg.com/564x/3d/1a/71/3d1a71a458f2a486540753580f37b0c5.jpg',
      text: 'Home Decor',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/236x/84/87/8d/84878da36d27e4c0603ecd48bee6c548.jpg',
      text: 'Drink and Food',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/236x/ee/d2/73/eed2737d3aa3f36e9fd57ec12b1472bd.jpg',
      text: 'Travel',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/564x/c5/d8/6a/c5d86a3aa320bba2fb2aa90edfe1a181.jpg',
      text: 'Technology',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/236x/ce/f2/7f/cef27fa5ab600d0fb87f5afb4d57faa6.jpg',
      text: 'Men\'s Fashion',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/564x/20/2f/3a/202f3ae0ef371104a7702534ff2fd956.jpg',
      text: 'Art',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/564x/9d/08/c2/9d08c233aa1b58108ed2d0ac76c05211.jpg',
      text: 'Design',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/236x/9a/00/93/9a00933043aac856a2fdc1cf557b4c13.jpg',
      text: 'Photography',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/236x/05/68/62/0568623907622933bbac240fc906ce06.jpg',
      text: 'Animals',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/736x/bf/ae/4e/bfae4e2fa6b1b29c730740f47cfcff1c.jpg',
      text: 'Qoutes',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/236x/cb/2d/70/cb2d70702e32aacf5e691bf3e8026089.jpg',
      text: 'Women\'s Fashion',
    ),
    ScreenModel(
      image:
      'https://i.pinimg.com/236x/8f/4e/38/8f4e38c52ebfad4dddb45947b96bf181.jpg',
      text: 'Natural',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Pinterest',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                        ),
                      ),
                      Text(
                        'Pick 5 or more topics',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'Next',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                  childAspectRatio: 10 / 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return PinterestComponent(card: cards[index],);
                },
                itemCount: cards.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
