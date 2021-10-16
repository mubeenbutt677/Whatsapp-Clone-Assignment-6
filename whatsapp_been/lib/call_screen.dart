// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'chat_model.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
                    datachat[i].time,
                    style: TextStyle(color: Colors.grey),
                  ),
                  tileColor: Color.fromRGBO(18, 27, 34, 1),
                  trailing: Column(
                    children: [Icon(Icons.call, color: Colors.white)],
                  ),
                ),
              )
            ],
          ));
}
