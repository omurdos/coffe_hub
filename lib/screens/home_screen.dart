import 'package:coffee_hub/screens/drinks_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _screens = [DrinksScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       actions: [
         IconButton(icon: Icon(Icons.search), onPressed: (){})
       ],
      ),
      drawer: Drawer(

      ),
      body: SafeArea(
        child: _screens[0],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
          ),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Color(0xFFB98875),
            showSelectedLabels: false,
            selectedIconTheme: IconThemeData(
              size: 28
            ),
            unselectedItemColor: Color(0xFFB98875).withOpacity(0.3),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.local_drink_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
