// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_been/chat_model.dart';
import 'chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: datachat.length,
      itemBuilder: (context, i) => Column(
            children: [
              Container(
                color: Color.fromRGBO(18, 27, 34, 1),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(datachat[i].avatarUrl),
                  ),
                  title: Text(datachat[i].name,
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                    datachat[i].message,
                    style: TextStyle(color: Colors.grey),
                  ),
                  tileColor: Color.fromRGBO(18, 27, 34, 1),
                  trailing: Column(
                    children: [
                      Text(datachat[i].time,
                          style: TextStyle(color: Colors.grey)),
                      Icon(Icons.circle_notifications_rounded,
                          color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ));
}
