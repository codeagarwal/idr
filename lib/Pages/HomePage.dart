import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idr_aircontrol/Pages/airspace.dart';
import 'package:idr_aircontrol/Pages/gpsInfo.dart';
import 'package:idr_aircontrol/Pages/missionplanner.dart';
import 'package:idr_aircontrol/Pages/profile.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  static const TextStyle optionStyle = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurpleAccent);
  static List<Widget> _widgetOptions = <Widget>[
    GPSinfo(),
    MissionPlanner(),
    Airspace(),
    Profile(),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF827710),
        title: "IDR Research & Development".text.xl3.make(),
      ),
      body: Center(
        child: HomePage._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed),
            label: 'GPS Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_sharp),
            label: 'Mission Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust_sharp),
            label: 'AirSpace',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black12,
        selectedItemColor: Color(0xFF827710),
        onTap: _onItemTapped,
      ),
    );
  }
}
