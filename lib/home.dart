import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            children: [
              Text("Hello",
                          style: Theme.of(context).textTheme.headline3!.apply(
                            color: Theme.of(context).highlightColor,
                          ),

              ),
              Text("Bhupesh",
              style: Theme.of(context).textTheme.headline3,
              )
            ],
          ),
          Container(
            height: 43.h,
            width: 314.w,
            
          )

          
        ]),
      ),
    );
  }
}