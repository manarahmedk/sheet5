import 'package:flutter/material.dart';

import '../../model/chat_model.dart';

class ConversationChatWidget extends StatelessWidget {
   Chat chat;

   ConversationChatWidget({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: Image.network(
              chat.image??'',
            ).image,
            child: Visibility(
              visible: chat.isOnline?? false,
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name??"",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                chat.messege??'',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            chat.time??'',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
