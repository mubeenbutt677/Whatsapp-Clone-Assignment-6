// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          Card(
            color: Colors.white,
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ListTile(
                  leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmF15k0S2NcPctZKczReiTjcWTqKIvcfb0sCX2r-QmE9t_Ym7z4tUwd0ZIK_jXvzK25O0&usqp=CAU"),
                  ),
                  Positioned(
                    right: 10.0,
                    bottom: 0.0,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
