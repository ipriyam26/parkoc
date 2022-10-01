import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkoc/home.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
  
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800.h,
        child: Column(
            // mainAxisAlignment: Mia,
            children: [
              HomeScreen(),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.access_time_filled))
                ],
              )
            ]),
      ),
    );
  }
}
