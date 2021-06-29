import 'package:bottom_navigation/screen/coinpage/coinpage.dart';
import 'package:bottom_navigation/screen/datapage/datapage.dart';
import 'package:bottom_navigation/screen/homepage/homepage.dart';
import 'package:bottom_navigation/screen/userpage/userpage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  var pages = [
    HomePage_Screen(),
    CoinPage_Screen(),
    DataPage_Screen(),
    UserPage_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paid),
            label: 'Coin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
       ],
       type: BottomNavigationBarType.fixed,
       currentIndex: _currentIndex,
       selectedItemColor: Color.fromRGBO(85, 184, 224, 1),
       onTap: _onItemSelected,
      )
    );
  }
  void _onItemSelected(int index){
    setState(() {
      _currentIndex = index;
    });
  }

}