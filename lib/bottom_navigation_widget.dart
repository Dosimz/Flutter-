import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/er_screen.dart';
import 'pages/san_screen.dart';
import 'pages/si_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.black26;
  List<Widget> pages = List();
  int _currentIndex = 0;

  @override
  void initState(){
    super.initState();
    pages
      ..add(HomeScreen())
      ..add(ErScreen())
      ..add(SanScreen())
      ..add(SiScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
              color: _BottomNavigationColor,
            ),
            title:Text(
              '彡',
              style: TextStyle(color: Color.fromARGB(1, 2, 3, 4)),
            )
          ),
          //1111111111111111111111111111111111111111
          BottomNavigationBarItem(
            icon: Icon(
              Icons.accessibility,
              color: _BottomNavigationColor,
            ),
            title:Text(
              '彡',
              style: TextStyle(color: Color.fromARGB(1, 2, 3, 4)),
            )
          ),
          //2222222222222222222222222222222222222222222222
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance,
              color: _BottomNavigationColor,
            ),
            title:Text(
              '彡',
              style: TextStyle(color: Color.fromARGB(1, 2, 3, 4)),
            )
          ),
          //33333333333333333333333333333333333333333333333333
          BottomNavigationBarItem(
            icon: Icon(
              Icons.adb,
              color: _BottomNavigationColor,
            ),
            title:Text(
              '彡',
              style: TextStyle(color: Color.fromARGB(1, 2, 3, 4)),
            )
          ),
          //444444444444444444444444444444444444444444444
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}