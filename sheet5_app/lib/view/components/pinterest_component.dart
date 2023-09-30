import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../model/screen_model.dart';




class PinterestComponent extends StatelessWidget {
  final ScreenModel card;

  PinterestComponent({required this.card});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: FractionalOffset.bottomLeft,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              card.image??'',
              width: 115,
              height: 115,
              fit: BoxFit.cover,
              color: Colors.black26,
              colorBlendMode: BlendMode.darken,
            )
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: Text(
             card.text??'',
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              softWrap: false,
              style:TextStyle(
                color: Colors.white,
              )
          ),
        ),
      ],
    );
  }
}
