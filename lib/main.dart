import 'package:flutter/material.dart';
import 'package:dashboardtask/side_menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dashboardtask/dash_board.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              
              child: SideMenu(),
            ),
            Expanded(
              flex: 3,
              child: DashBoardScreen(),
              ),
              Expanded(
              flex: 2,
              child: RightSideMenu(),
              ),

            
          ],
        ),
      ),
    );
  }
}

class RightSideMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.red,
    );
  }
}