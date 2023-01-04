// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  List calldata = [
    {
      'dp':
          'https://www.filmibeat.com/img/2019/02/kerala-state-film-awards-best-actors-2-1551245856.jpg',
      'title': 'Mammookka',
      'day': 'Today',
      'time': '11:10',
    },
    {
      'dp': 'https://static.toiimg.com/photo/78766905.cms?imgsize=367804',
      'title': 'Prithviraj Sukumaran',
      'day': 'Today',
      'time': '1:40',
    },
    {
      'dp': 'https://starswiki.in/wp-content/uploads/2020/02/John-Cena.jpeg',
      'title': 'john cena',
      'day': 'Today',
      'time': '2:30',
    },
    {
      'dp':
          'https://th.bing.com/th/id/OIP.09ZXONJoes16jawQzz2SLgHaJQ?pid=ImgDet&rs=1',
      'title': 'Resmika',
      'day': 'Yesterday',
      'time': '10:10',
    },
    {
      'dp':
          'https://images.businessupturn.com/wp-content/uploads/2020/09/vijay-1.jpg',
      'title': 'Vijay Actor',
      'day': 'yesterday',
      'time': '9:30',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: calldata.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5, right: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(calldata[index]['dp']),
              ),
              title: Text(
                calldata[index]['title'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.call_received_outlined,
                    color: Colors.green,
                    size: 18,
                  ),
                  Text(
                    calldata[index]['day'],
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    calldata[index]['time'],
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              trailing: Icon(Icons.call_outlined, color: Colors.green),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: Icon(Icons.add_call),
        backgroundColor: Color.fromARGB(255, 53, 124, 56),
      ),
    );
  }
}
