import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import '../components/pinterest_component.dart';

class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://images.inc.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg',
                  ),
                ),
              ],
              ),
          ],
        ),
      ),
    );
  }
}