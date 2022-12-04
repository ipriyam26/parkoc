import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parkoc/controller/user_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final UserController controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    var label = "Your Vehicles";

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 41.h, left: 28.w, right: 28.w),
        child: Column(
          children: [
            ImageDetails(controller: controller),
            SizedBox(
              height: 46.h,
            ),
            SizedBox(
              height: 150.h,
              child: Column(
                children: [
                  LabelButton(label: label),
                  const LabelButton(label: "Settings"),
                  // LabelButton(label: label),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 308.w,
                      margin: EdgeInsets.only(top: 15.h),
                      child: Text(
                        label,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 282.w,
                height: 41.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).highlightColor),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Text(
                  "Register as Parking Owner",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .apply(color: Theme.of(context).highlightColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
                width: 282.w,
                height: 41.h,
                child: ElevatedButton(
                    onPressed: () {
                      // Get.to( LoginScreen());
                    },
                    child: Text(
                      "Register as User",
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                    )),
          ],
        ),
      ),
    );
  }
}

class LabelButton extends StatelessWidget {
  const LabelButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 308.w,
        margin: EdgeInsets.only(top: 15.h),
        padding: EdgeInsets.only(bottom: 9.h),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Text(
          label,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.name,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              controller.email,
              style: Theme.of(context).textTheme.caption,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  controller.phone,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Text(
                  "Edit",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .apply(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ],
        ),
        ClipOval(
          child: Image.network(
            controller.image,
            width: 83.w,
            height: 83.h,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
