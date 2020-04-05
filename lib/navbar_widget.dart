import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'map_widget.dart';


class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  //Instance properties
  int _currentIndex = 0; // Manages which state the NavBar is in
  final List<Widget> _children = [
    MapWidget(),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
    ]; //list of widgets that we want to render based on the currently selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //body:  what gets displayed above NavBar and below AppBar (I have omitted the AppBar)
      // For maps tab will display map, for favorites 
      body: _children[_currentIndex],
      // Nav bar 
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: onTabTapped,
        currentIndex: _currentIndex, //Will be updated when new tab is clicked

        items: [

          BottomNavigationBarItem(
            icon: new Icon(Icons.map),
            title: Text("Map"),
            ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.rss_feed),
            title: Text("Feed")
            ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: Text("Profile"),
            ),

        ], //Items
      ),
    );
  } // End build

  //Handle Navigation
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}