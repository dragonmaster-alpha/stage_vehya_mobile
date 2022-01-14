import 'package:enya/constant/color_constants.dart';
import 'package:enya/screens/accounts/vendor_profile.dart';
import 'package:enya/screens/completed_jobs/completed_jobs.dart';
import 'package:enya/screens/home/home_screen.dart';

import 'package:enya/screens/settings/setting.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex=0;

  final List _screens= [
    const HomeScreen(),
    const SettingsScreen(),
    const CompletedJobScreen(),
     const VendorProfile()
   ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        items: const [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.thumb_up),
              label: "Likes"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "account"
          ),


        ],

      ),
    );
  }
}
