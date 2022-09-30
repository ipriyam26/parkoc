import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360.w,
        decoration: const BoxDecoration(
          // color: Colors.pink,
          image: DecorationImage(
            image: AssetImage("asset/bg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 96.h,
                ),
                Image.asset(
                  "asset/logoWhite.png",
                  // color: Colors.white,
                ),
              ],
            ),
            Column(
                   

              children: [
                Container(
                    width: 282.w,
                    height: 41.h,
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Register as User",
                          style: Theme.of(context).textTheme.subtitle1,
                        ))),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  width: 282.w,
                  height: 41.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Text(
                    "Register as Parking Owner",
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 36.h,
                  margin: EdgeInsets.only(top: 30.h, bottom: 35.h),
                  width: 116.w,
                  alignment: Alignment.center,
                  child: Text(
                    "We’ll help you park. Coz we Care! ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1!.apply(
                          fontSizeDelta: -2,
                        ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
