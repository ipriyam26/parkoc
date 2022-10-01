import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkoc/private_parking_form_controller.dart';

class PrivateParkingForm extends StatelessWidget {
  PrivateParkingFormController controller =
      Get.put(PrivateParkingFormController());
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> fields = [
      {
        'label': 'Operational Hours',
        "tip": 'For how long you can provide your parking space?'
      },
      {
        "label": "Available Slots",
        "tip": "How many vehicles can be parked at one time?"
      },
      {
        "label": "Lot Area (in sq. meters)",
        "tip": "What is the area of the parking lot?",
      },
      {
        "label": "Secure Facility",
        "tip": "Do you have any security services at your space?",
      }
    ];
    List<List<String>> options = [
      [
        'Select Your Option',
        '12 Hour',
        '24 Hour',
      ],
      ['Select your option', 'Yes we have', 'No we dont']
    ];
    var textStyle = TextStyle(
      color: const Color(0xff141313),
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    );
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 79.h),
        child: GetBuilder<PrivateParkingFormController>(builder: (controller) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 73.w),
                child: Image.asset(
                  "asset/beep.png",
                  width: 267.w,
                  height: 178.h,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWithTip(
                        label: fields[0]['label'], tip: fields[0]['tip']),
                    DropDownWidget(
                      options: options,
                      controller: controller,
                    ),
                    LabelWithTip(
                        label: fields[1]['label'], tip: fields[1]['tip']),
                    SlotField(
                      textStyle: textStyle,
                      controller: controller,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    LabelWithTip(
                        label: fields[2]['label'], tip: fields[2]['tip']),
                    LotAreaField(textStyle: textStyle, controller: controller),
                    SizedBox(
                      height: 20.h,
                    ),
                    LabelWithTip(
                        label: fields[3]['label'], tip: fields[3]['tip']),
                    DropDownSecureFacility(
                        options: options, controller: controller),
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
                      "Continue",
                      style: Theme.of(context).textTheme.subtitle1,
                    )))
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

class DropDownSecureFacility extends StatelessWidget {
  const DropDownSecureFacility({
    Key? key,
    required this.options,
    required this.controller,

  }) : super(key: key);
  final PrivateParkingFormController controller;
  final List<List<String>> options;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284.w,
      height: 45.h,
      margin: EdgeInsets.only(top: 13.h, bottom: 10.h),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).highlightColor, width: 0.5),
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
        value: options[1][controller.isSecure.value],
        isExpanded: true,
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: options[1].map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items,
                style: Theme.of(context).textTheme.headline4!.apply(
// backgroundColor: Theme.of(context).cardColor
                    fontWeightDelta: 2)),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          controller.isSecure.value = options[1].indexOf(newValue!);
          controller.refresh();
        },
      ),
    );
  }
}

class LotAreaField extends StatelessWidget {
  const LotAreaField({
    Key? key,
    required this.textStyle,
    required this.controller,
  }) : super(key: key);

  final TextStyle textStyle;
  final PrivateParkingFormController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: EdgeInsets.only(top: 10.h),
      width: 284.w,
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        // autofillHints: false,
        // initialValue: controller.availableSlots.value.toString(),
        enableSuggestions: false,
        onChanged: (String e) {
          double value = 0.0;
          try {
            value = double.parse(e);
          } catch (e) {
            Get.snackbar(
              "Error",
              // e.toString(),
              "Please enter slots in number",
              icon: const Icon(Icons.cancel, color: Colors.white),
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 3),
            );
            value = 0;
          }
          controller.area.value = value;
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
          hintText: "Enter area of parking space in m²",
          hintStyle: textStyle,
        ),
      ),
    );
  }
}

class SlotField extends StatelessWidget {
  const SlotField({
    Key? key,
    required this.textStyle,
    required this.controller,
    required,
  }) : super(key: key);

  final TextStyle textStyle;
  final PrivateParkingFormController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: EdgeInsets.only(top: 10.h),
      width: 284.w,
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        // autofillHints: false,
        // initialValue: controller.availableSlots.value.toString(),
        enableSuggestions: false,
        onChanged: (String e) {
          int value = 0;
          try {
            value = int.parse(e);
          } catch (e) {
            Get.snackbar(
              "Error",
              // e.toString(),
              "Please enter slots in number",
              icon: const Icon(Icons.cancel, color: Colors.white),
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 3),
            );
            value = 0;
          }
          controller.availableSlots.value = value;
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
          hintText: "Enter Number of Slots",
          hintStyle: textStyle,
        ),
      ),
    );
  }
}

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    Key? key,
    required this.options,
    required this.controller,
  }) : super(key: key);

  final List<List<String>> options;
  final PrivateParkingFormController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284.w,
      height: 45.h,
      margin: EdgeInsets.only(top: 13.h, bottom: 10.h),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).highlightColor, width: 0.5),
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
        value: options[0][controller.operationalHours.value],
        isExpanded: true,
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: options[0].map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items,
                style: Theme.of(context).textTheme.headline4!.apply(
// backgroundColor: Theme.of(context).cardColor
                    fontWeightDelta: 2)),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          controller.operationalHours.value = options[0].indexOf(newValue!);
          controller.refresh();
        },
      ),
    );
  }
}

class LabelWithTip extends StatelessWidget {
  LabelWithTip({
    Key? key,
    required this.label,
    required this.tip,
  }) : super(key: key);

  String label;
  String tip;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .apply(fontSizeDelta: -6.sp),
        ),
        SizedBox(
          width: 7.w,
        ),
        Tooltip(
          message: tip,
          triggerMode: TooltipTriggerMode.tap,

          child: Icon(
            Icons.info,
            size: 18.sp,
            color: Theme.of(context).primaryColor,
          ), //Text
        ),
      ],
    );
  }
}
