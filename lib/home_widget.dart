import 'package:flutter/material.dart';
import 'navbar_widget.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
 @override
 Widget build(BuildContext context) {
    return NavigationBar();
 }
}