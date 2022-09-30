import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkoc/home.dart';
import 'package:parkoc/login_controller.dart';
import 'package:parkoc/signup.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  LoginController loginController = Get.put(LoginController());

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
        height: 800.h,
        width: 360.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('asset/bk.png'))),
        child: Container(
          margin: EdgeInsets.only(top: 190.h, bottom: 32.h),
          height: 400.h,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'asset/logo.png',
                height: 101.h,
                width: 142.w,
                fit: BoxFit.cover,
              ),
              Material(
                elevation: 10,
                color: const Color(0xffFFF5E9),
                borderRadius: BorderRadius.circular(12.r),
                child: GetBuilder<LoginController>(
                    // stream: null,
                    builder: (controller) {
                  return SizedBox(
                    height: 260.h,
                    width: 284.w,
                    // color: Colors.amber,

                    child: Column(
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          "Login Now",
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
                              TextFormField(
                                autocorrect: false,
                                // autofillHints: false,
                                initialValue: controller.email.value,
                                enableSuggestions: false,
                                onChanged: (String e) {
                                  controller.email.value = e;
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
                                  hintText: "Enter Your Email",
                                  hintStyle: textStyle,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              TextFormField(
                                style: textStyle,
                                // keyboardType: ,
                                // keyboardType: TextInputType
                                // ,
                                initialValue: controller.password.value,
                                obscureText: true,
                                onChanged: (String e) {
                                  controller.password.value = e;
                                  controller.refresh();
                                },
                                scrollPadding: EdgeInsets.zero,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                    gapPadding: 0,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  hintText: "Password",
                                  hintStyle: textStyle,
                                ),
                              )
                            ],
                          ),
                        ),
                        // TextFormField()
                        ElevatedButton(
                            onPressed: () {
                              var res = controller.login();
                              if (res) {
                                Get.to(HomeScreen());
                              }
                            },
                            // style: ElevatedButton.styleFrom(
                            //   // primary: Color(0xff0477FF),
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
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 12),
                            ))
                      ],
                    ),
                  );
                }),
              ),
              Column(
                children: [
                  const Text("Already have an account?"),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(const SignUpScreen());
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff0477FF)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r)))),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 18),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
