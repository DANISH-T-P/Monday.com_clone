import 'dart:html';

import 'package:flutter/material.dart';

class MondayHomePage extends StatefulWidget {
  const MondayHomePage({super.key});

  @override
  State<MondayHomePage> createState() => _MondayHomePageState();
}

class _MondayHomePageState extends State<MondayHomePage> {

  final List<Widget> _screens = [
    Container(
      color: Colors.yellow.shade100,
      alignment: Alignment.center,
      child: Text(
        'Home',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.purple.shade100,
      alignment: Alignment.center,
      child: Text(
        'Favorites',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.pink.shade100,
      alignment: Alignment.center,
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 640)
          NavigationRail(
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIndex: _selectedIndex,
            destinations: [
              NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
              NavigationRailDestination(icon: Icon(Icons.feed), label: Text('feed')),
              NavigationRailDestination(icon: ListView(
                children: [
                  SizedBox(height: 10,),
                  GestureDetector(
                    child: Image.asset('assets/icons/dots-menu.png',height: 30,color: Colors.deepPurple),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Icon(Icons.notifications_none),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Icon(Icons.inbox_outlined),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Icon(Icons.calendar_today_outlined),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Icon(Icons.star_border_rounded),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Icon(Icons.contact_page_outlined),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Icon(Icons.search_rounded),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    child: Icon(Icons.help_outline_rounded),
                  ),
                  SizedBox(height: 10,),
                ]), label: Text('')),
              NavigationRailDestination(icon: Icon(Icons.favorite), label: Text('favorite')),
              NavigationRailDestination(icon: Icon(Icons.settings), label: Text('settings')),
            ],
            labelType: NavigationRailLabelType.all,selectedLabelTextStyle: TextStyle(color: Colors.teal),
            unselectedLabelTextStyle: TextStyle(),
            leading: Column(
              children: [
                SizedBox(height: 8,),
                CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                )
              ],
            ),
            trailing: Column(
              children: [
                SizedBox(height: 8,),
                CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                )
              ],
            ),
          ),
          Expanded(child: _screens[ _selectedIndex ],)
        ],
      )
    );
  }
}
