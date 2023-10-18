import 'package:flutter/material.dart';
import 'package:flutter_chat_app/config/palette.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  // 로그인 유무
  bool isSignupScreen = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            // const Text('data'),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/img.gif'),
                          fit: BoxFit.fill)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Welcome',
                              style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)),
                              children: [
                                TextSpan(
                                    text: ' my app',
                                    style: TextStyle(
                                        letterSpacing: 1.0,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255))),
                              ]),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const Text(
                          'Signup to continue',
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
              top: 230.h,
              child: Container(
                padding: EdgeInsets.all(20.h),
                height: 280.h,
                width: 1.sw - 40.w,
                margin: EdgeInsets.symmetric(horizontal: 20.0.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.textColor1
                                        : Palette.activeColor),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3.h),
                                  height: 2.h,
                                  width: 55.w,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              // 회원가입 을 누르면 값이 true로 변경
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'SIGNUP',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3.h),
                                  height: 2.h,
                                  width: 55.w,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
