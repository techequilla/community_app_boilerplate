import 'package:flutter/material.dart';

import 'home_page.dart';

class Dummy extends StatefulWidget{
  Dummy({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<Dummy> {
  int selectedIndex = 0;
  final widgetOptions = [
    Home(),
    Text('Announcements'),
    Text('Achievements'),
    Text('Team'),
    Text('Contact Us'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Techequilla'),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.announcement), title: Text('Announcements')),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), title: Text('Achievements')),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account), title: Text('Team')),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), title: Text('Contact Us')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.pink,
        onTap: onItemTapped,
        unselectedItemColor: Colors.blueGrey[400],
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}