import 'package:flutter/material.dart';
import 'package:ilsottosopra/account_page.dart';
import 'package:ilsottosopra/home_page.dart';
import 'package:ilsottosopra/settings_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex=0;
  List<Widget> screens = [
    HomePage(),
    SettingsPage(),
    AccountPage()
    

  ];

  void changeIndex(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Center(child: Image.asset("lib/assets/logo.png", width: 200,)),
        actions: const [SizedBox(width: 50,)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            label: "Account"
          )
        ],
      ),
      body: screens.elementAt(selectedIndex),
    );
  }
}