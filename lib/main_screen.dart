import 'package:flutter/material.dart';
import 'info_screen.dart';
import 'user_screen.dart';
import 'home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    MainHome(),
    WelcomeScreen(),
    UserScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
        backgroundColor: Colors.blueGrey[900],
      ),
      body: _children[_currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User Profile',
          )
        ],
      ),

    );
  }
   void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 } 
}
