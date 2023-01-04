// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Screens/CallScreen.dart';
import 'Screens/ChatScreen.dart';
import 'Screens/StatusScreen.dart';
import 'Screens/popscreens/CommunityScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 237, 237),
        appBar: AppBar(
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.camera_alt_outlined),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                onSelected: (String value) {
                  // do something with the selected value here
                },
                itemBuilder: (BuildContext ctx) => [
                      const PopupMenuItem(value: '1', child: Text('New group')),
                      const PopupMenuItem(
                          value: '2', child: Text('New community')),
                      const PopupMenuItem(
                          value: '3', child: Text('Starred messages')),
                      const PopupMenuItem(value: '4', child: Text('Settings')),
                      const PopupMenuItem(value: '5', child: Text('Log out')),
                    ])
          ],
          backgroundColor: Color(0xff075e54),
          title: Text(
            'WhatsApp',
            style: TextStyle(fontSize: 25),
          ),
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            //  padding: EdgeInsets.zero,

            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
                child: Tab(
                  icon: Icon(Icons.people_outline),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(text: ("Chat"))),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(text: ("Status"))),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(text: ("Calls"))),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [Community(), ChatScreen(), StatusScreen(), CallScreen()],
        ),
      ),
    );
  }
}
