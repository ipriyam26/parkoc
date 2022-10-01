import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkoc/home.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800.h,
        width: 360.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('asset/bk2.png'))),
        child: Container(
          margin: EdgeInsets.only(top: 105.h, bottom: 32.h),
          height: 400.h,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "You will get set in 3.5 minutes",
                style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp),
              ),
              Material(
                elevation: 10,
                color: const Color(0xffFFF5E9),
                borderRadius: BorderRadius.circular(12.r),
                child: SizedBox(
                  height: 480.h,
                  width: 284.w,
                  // color: Colors.amber,

                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        "Details",
                        style: TextStyle(
                          color: const Color(0xff0477FF),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        // height: 98.h,
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 19.h),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 38.h,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.zero,
                                maxLines: 1,
                                // style: TextStyle(height: 12.sp),
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.25.w),
                                    gapPadding: 0,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  hintText: "Full Name",
                                  hintStyle: TextStyle(
                                    color: const Color(0xff141313),
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                                                            height: 38.h,

                              child: TextFormField(
                                scrollPadding: EdgeInsets.zero,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.25.w),
                                    gapPadding: 0,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  hintText: "DOB - DD/MM/YYYY",
                                  hintStyle: TextStyle(
                                    color: const Color(0xff141313),
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                                                            height: 38.h,

                              child: TextFormField(
                                scrollPadding: EdgeInsets.zero,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.25.w),
                                    gapPadding: 0,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(
                                    color: const Color(0xff141313),
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                                                            height: 38.h,

                              child: TextFormField(
                                scrollPadding: EdgeInsets.zero,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.25.w),
                                    gapPadding: 0,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: const Color(0xff141313),
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Text(
                              "Address",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                                                            height: 38.h,

                              child: TextFormField(
                                scrollPadding: EdgeInsets.zero,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.25.w),
                                    gapPadding: 0,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  hintText: "Street Address",
                                  hintStyle: TextStyle(
                                    color: const Color(0xff141313),
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 118.w,
                                  child: SizedBox(
                                                                  height: 38.h,

                                    child: TextFormField(
                                      scrollPadding: EdgeInsets.zero,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 0.25.w),
                                          gapPadding: 0,
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                        hintText: "City",
                                        hintStyle: TextStyle(
                                          color: const Color(0xff141313),
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 118.w,
                                  child: SizedBox(
                                                                  height: 38.h,

                                    child: TextFormField(
                                      scrollPadding: EdgeInsets.zero,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 0.25.w),
                                          gapPadding: 0,
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                        hintText: "State",
                                        hintStyle: TextStyle(
                                          color: const Color(0xff141313),
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      // TextFormField()

                      ElevatedButton(
                          onPressed: (){
                            Get.to(
                              HomeScreen()
                            );
                          },
                          // style: ElevatedButton.styleFrom(
                          //   backgroundColor: Color(0xff0477FF),
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(5.r)
                          //   )
                          // )
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff0477FF)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r)))),
                          child: Text(
                            "Let's Park".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 12),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
