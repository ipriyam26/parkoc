import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkoc/home.dart';
import 'package:parkoc/private_parking_form.dart';

class ParkingOwnerSignup extends StatelessWidget {
  const ParkingOwnerSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 950.h,
        width: 360.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('asset/bk2.png'))),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 100.h),
            height: 950.h,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "You will get set in 5 minutes",
                  style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp),
                ),
                SizedBox(height: 50.h,),
                Material(
                  elevation: 10,
                  color: const Color(0xffFFF5E9),
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
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
                              "Locate on the map".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 12),
                            )
                            )
                      ],
                    ),
                  ),
                ),
                SizedBox(height:39.h),
                Text("Some Documentation",
                style:TextStyle(
                            color: const Color(0xff0477FF),
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ) ,

                          
                ),
                SizedBox(height: 28.h,)
                ,Material(
                    elevation: 10,
                  color: const Color(0xffFFF5E9),
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    height: 55.h,
                    width: 284.w,
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text("Upload Your Adhar",
                    style: TextStyle(
                                            color: const Color(0xff141313),
                                            fontFamily:
                                                GoogleFonts.poppins().fontFamily,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                          ),
                    ),
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
                              // make padding zero
                              padding:  MaterialStateProperty.all(EdgeInsets.zero),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff0477FF)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r)))),
                            child: Text(

                              "upload".toUpperCase(),
                              style: TextStyle(
                                
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 10.sp),
                            )
                            )

                            
                  ],
                  
                  
                  
                  )),
                ),
                SizedBox(height: 14.h,)
                ,Material(
                    elevation: 10,
                  color: const Color(0xffFFF5E9),
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    height: 55.h,
                    width: 284.w,
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text("Upload Your Pan",
                    style: TextStyle(
                                            color: const Color(0xff141313),
                                            fontFamily:
                                                GoogleFonts.poppins().fontFamily,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                          ),
                    ),
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
                              // make padding zero
                              padding:  MaterialStateProperty.all(EdgeInsets.zero),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff0477FF)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r)))),
                            child: Text(

                              "upload".toUpperCase(),
                              style: TextStyle(
                                
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 10.sp),
                            )
                            )

                            
                  ],
                  
                  
                  
                  )
                  ),
                )
                ,
                                SizedBox(height: 14.h,),

                Material(
                    elevation: 10,
                  color: const Color(0xffFFF5E9),
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    height: 75.h,
                    width: 284.w,
                    padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 10.h),
                    child: Wrap(
                      alignment:WrapAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text("Property document of the parking space ",
                    style: TextStyle(
                                            color: const Color(0xff141313),
                                            fontFamily:
                                                GoogleFonts.poppins().fontFamily,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                          ),
                    ),
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
                              // make padding zero
                              padding:  MaterialStateProperty.all(EdgeInsets.zero),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff0477FF)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r)))),
                            child: Text(

                              "upload".toUpperCase(),
                              style: TextStyle(
                                
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 10.sp),
                            )
                            )

                            
                  ],
                  
                  
                  
                  )),
                ),
                SizedBox(height: 20.h,),
               ElevatedButton(
                            onPressed: (){
                              Get.to(
PrivateParkingForm()
                              );
                            },
                            // style: ElevatedButton.styleFrom(
                            //   backgroundColor: Color(0xff0477FF),
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(5.r)
                            //   )
                            // )
                            style: ButtonStyle(
                              // make padding zero
                              padding:  MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 105.w,vertical: 15.h)),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff0477FF)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r)))),
                            child: Text(

                              "Let's Goooo".toUpperCase(),
                              style: TextStyle(
                                
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 10.sp),
                            )
                            ) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
