import 'package:flutter/material.dart';
import 'package:sheet5_app/view/screens/pinterest_screen.dart';
import 'package:sheet5_app/view/screens/messenger_screen.dart';
import 'view/screens/chats_screen.dart';
import 'view/screens/login_app_screen.dart';
import 'view/screens/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home:ChatsScreen(),
    ),
  );
}
//const MyApp({Key? key}) : super(key: key);
