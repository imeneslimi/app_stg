import 'package:app_stg/third.dart';
import 'package:flutter/material.dart';


import 'fifth.dart';
import 'fourth.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _currentIndex=0;
  final screens = [
    ThirdPage(),
    ListScreen(),
    FifthPage(),
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.white,

        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          iconSize: 28,
          showUnselectedLabels: false,
          onTap: (index){
            setState((){
            _currentIndex= index; });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.dashboard ) , label: 'dashboard' , backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(icon: Icon(Icons.cases ,), label: 'cases' ,backgroundColor: Colors.redAccent ),
            BottomNavigationBarItem(icon: Icon(Icons.timer ,), label: 'appointements' ,backgroundColor: Colors.redAccent,),

          ],
        ),
       );
  }
}
