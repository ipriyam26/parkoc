import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkoc/add_vehicle_controller.dart';

class AddVehicleScreen extends StatelessWidget {
  // const AddVehicleScreen({Key? key}) : super(key: key);

  AddVehicleController controller = Get.put(AddVehicleController());
  List<String> options = ["None", "2 WHEELER", "4 WHEELER"];

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: const Color(0xff141313),
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    );
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 39.w),
        height: 800.h,
        width: 360.w,
        color: Theme.of(context).cardColor,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 149.h),
                child: Text(
                  "Add New Vehicle",
                  style: Theme.of(context).textTheme.headline3,
                )),
            Container(
              margin: EdgeInsets.only(top: 27.h),
              child: Image.asset(
                "asset/cars.png",
              ),
            ),
            GetBuilder<AddVehicleController>(builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 56.h),
                      child: Text(
                        "Vehicle Type",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .apply(fontSizeDelta: 6.sp, fontWeightDelta: 1),
                      )),
                  Container(
                    width: 284.w,
                    height: 45.h,
                    margin: EdgeInsets.only(top: 13.h, bottom: 10.h),
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                          color: Theme.of(context).highlightColor, width: 0.5),
                    ),
                    child: DropdownButton(
                      // foc
                      dropdownColor: Colors.white,
                      focusColor: Colors.white,
                      underline: Container(),
                      style: Theme.of(context).textTheme.headline5!.apply(
                          // fontSizeDelta: -6.sp,
                          // fontWeightDelta: -1,

                          ),
                      isDense: true,

                      // Initial Value
                      value: options[controller.vehicleType.value],
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: options.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,
                              style:
                                  Theme.of(context).textTheme.headline4!.apply(
// backgroundColor: Theme.of(context).cardColor
                                      fontWeightDelta: 2)),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        controller.vehicleType.value =
                            options.indexOf(newValue!);
                        controller.refresh();
                      },
                    ),
                  ),
                  Container(
                    height: 45.h,
                    margin: EdgeInsets.only(top: 10.h),
                    width: 284.w,
                    child: TextFormField(
                      autocorrect: false,
                      // autofillHints: false,
                      initialValue: controller.vehicleName.value,
                      enableSuggestions: false,
                      onChanged: (String e) {
                        controller.vehicleName.value = e;
                        controller.refresh();
                      },
                      style: textStyle,
                      scrollPadding: EdgeInsets.zero,
                      maxLines: 1,
                      // style: TextStyle(height: 12.sp),
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          gapPadding: 0,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        hintText: "Vehicle Name (Brand name_model)",
                        hintStyle: textStyle,
                      ),
                    ),
                  ),
                  Container(
                    height: 45.h,
                    margin: EdgeInsets.only(top: 10.h),
                    width: 284.w,
                    child: TextFormField(
                      autocorrect: false,
                      // autofillHints: false,
                      initialValue: controller.vehicleRegistrationNumber.value,
                      enableSuggestions: false,
                      onChanged: (String e) {
                        controller.vehicleRegistrationNumber.value = e;
                        controller.refresh();
                      },
                      style: textStyle,
                      scrollPadding: EdgeInsets.zero,
                      maxLines: 1,
                      // style: TextStyle(height: 12.sp),
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          gapPadding: 0,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        hintText: "Registration Number",
                        hintStyle: textStyle,
                      ),
                    ),
                  ),
                  Container(
                      width: 282.w,
                      margin: EdgeInsets.only(top: 10.h),
                      height: 41.h,
                      child: ElevatedButton(
                          onPressed: () {
                            bool result = controller.addVehicleToList();
                            if (result) {
                              Get.back();
                            }

                            // Get.to( LoginScreen());
                          },
                          child: Text(
                            "Add to the list",
                            style: Theme.of(context).textTheme.subtitle1,
                          )))
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
