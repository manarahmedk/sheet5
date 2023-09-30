import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/screen_model.dart';

class Logo extends StatelessWidget {
  int? color;
  String? image;

  Logo(this.color, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(color!),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Image.network(
        image!,
        width: 150,
        height: 50,
      ),
    );
  }
}

