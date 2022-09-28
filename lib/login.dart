import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800.h,
        width: 360.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('asset/bk.png'))),
        child: Container(
          margin: EdgeInsets.only(top: 190.h,bottom: 32.h),
          height: 400.h,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(
                  'asset/logo.png',
                  height: 101.h,
                  width: 142.w,
                  fit: BoxFit.cover,
                ),
              ),

              Material(
                elevation: 10,
                color: const Color(0xffFFF5E9),
                borderRadius: BorderRadius.circular(12.r),
                child: Container(
                  height: 260.h,
                  width: 284.w,
                  // color: Colors.amber,

                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        "Register Now",
                        style: TextStyle(
                          color: Color(0xff0477FF),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        // height: 98.h,
                        margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 19.h),
                        child: Column(
                          children: [
                            TextFormField(
                              
                              scrollPadding: EdgeInsets.zero,
                              maxLines: 1,
                              // style: TextStyle(height: 12.sp),
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                hintText: "Enter Your Email",
                                hintStyle: TextStyle(
                                  color: Color(0xff141313),

                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                    
                            ),
                            SizedBox(height: 12.h,),
                            TextFormField(
                              scrollPadding: EdgeInsets.zero,
                              maxLines: 1,
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Color(0xff141313),

                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                    
                            )
                          ],
                        ),
                      ),
                      // TextFormField()
                    ElevatedButton(onPressed: null, 
                    // style: ElevatedButton.styleFrom(
                    //   // primary: Color(0xff0477FF),
                    //   backgroundColor: Color(0xff0477FF),
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(5.r)
                    //   )
                    // )
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff0477FF)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r)
                      ))
                    )
                    ,child: Text("Continue",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontFamily: GoogleFonts.poppins().fontFamily,fontSize: 12),
                    ))
                    ],
                  ),
                ),

              ),
              Column(children: [
                const Text("Already have an account?"),
                ElevatedButton(onPressed: null, 
              
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff0477FF)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r)
                    ))
                  )
                  ,child: Text("Login",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontFamily: GoogleFonts.poppins().fontFamily,fontSize: 18),
                  ))
              ],)

            ],
          ),
        ),
      ),
    );
  }
}
