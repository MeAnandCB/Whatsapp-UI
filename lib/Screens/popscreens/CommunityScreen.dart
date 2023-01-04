// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10, top: 20),
        child: ListView(children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  // ignore: sort_child_properties_last
                  child: Icon(
                    Icons.groups,
                    size: 35,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
            title: Text(
              'New Community',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              // ignore: sort_child_properties_last
              child: Icon(
                Icons.groups,
                size: 35,
                color: Colors.white,
              ),
              radius: 30,
            ),
            title: Text(
              'Flutter Community',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              // ignore: sort_child_properties_last
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.blueGrey,
                child: Image.network(
                    'https://plugins.jetbrains.com/files/7322/98424/icon/pluginIcon.png'),
              ),
              radius: 30,
            ),
            title: Text(
              'Flutter Community',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      ),
    );
  }
}
