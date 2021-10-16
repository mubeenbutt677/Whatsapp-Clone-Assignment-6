// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_been/status_screen.dart';

import 'call_screen.dart';
import 'camera_screen.dart';
import 'chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            initialIndex: 1,
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color.fromRGBO(31, 44, 52, 1),
                  actions: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                  ],
                  title: Text("Whatsapp"),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.camera_alt)),
                      Tab(text: "CHATS"),
                      Tab(text: "STATUS"),
                      Tab(text: "CALLS"),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: <Widget>[
                    CameraScreen(),
                    ChatScreen(),
                    StatusScreen(),
                    CallScreen(),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Color.fromRGBO(0, 168, 132, 1),
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  onPressed: () => print("Open Chat"),
                ))));
  }
}
