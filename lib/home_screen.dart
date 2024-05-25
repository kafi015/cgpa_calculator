import 'package:cgpa_calculator/cgpa_screen.dart';
import 'package:cgpa_calculator/gpa_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          title: Text('CGPA Calculator'),
          centerTitle: true,

          bottom: TabBar(
            tabs: [
              Tab(
                text: 'GPA',
              ),
              Tab(
                text: 'CGPA',
              ),
            ],
          ),

        ),

        body: TabBarView(
          children: [
            GPAScreen(),
            CGPAScreen(),
          ],
        ),

      ),
    );
  }
}
