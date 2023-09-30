import 'package:flutter/material.dart';
import 'package:sheet5_app/model/chat_model.dart';

class ChatWidget extends StatelessWidget {

  final Chat chat;
  ChatWidget({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: Image.network(
            chat.image??'',
          ).image,
          child: Visibility(
            visible: chat.isOnline ?? false ,
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ),
        Text(
          chat.name??'',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
