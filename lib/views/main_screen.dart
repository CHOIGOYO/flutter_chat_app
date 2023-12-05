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
            // 배경
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 300.h,
                  decoration: const BoxDecoration(color: Colors.orange),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Welcome',
                              style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              children: [
                                TextSpan(
                                  text: isSignupScreen ? ' my app' : ' back',
                                  style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          isSignupScreen
                              ? 'SignUp to continue'
                              : 'SignIn to continue',
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                )),
            // 텍스트 폼 필드
            Positioned(
              top: 230.h,
              child: Container(
                padding: EdgeInsets.all(20.h),
                height: isSignupScreen ? 280.h : 220.h,
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
                    Container(
                      margin: EdgeInsets.only(top: 30.h),
                      child: Form(
                          child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.email,
                                ),
                                // focusedBorder  포커스가 들어가도 아웃라인을 설정한 대로 유지하기위해
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Palette.textColor1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(35.r),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Palette.textColor1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(35.r),
                                  ),
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    fontSize: 14.sp, color: Palette.textColor1),
                                contentPadding: const EdgeInsets.all(10)),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                ),
                                // focusedBorder  포커스가 들어가도 아웃라인을 설정한 대로 유지하기위해
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Palette.textColor1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(35.r),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Palette.textColor1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(35.r),
                                  ),
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    fontSize: 14.sp, color: Palette.textColor1),
                                contentPadding: const EdgeInsets.all(10)),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          if (isSignupScreen)
                            TextField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.account_circle,
                                  ),
                                  // focusedBorder  포커스가 들어가도 아웃라인을 설정한 대로 유지하기위해
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.r),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.r),
                                    ),
                                  ),
                                  hintText: 'User name',
                                  hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: Palette.textColor1),
                                  contentPadding: const EdgeInsets.all(10)),
                            )
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
            // 동그란 원모양 버튼 ->
            Positioned(
              top: isSignupScreen ? 460.h : 410.h,
              // right: 10,
              left: 180.w,
              child: Container(
                height: 90.h,
                width: 90.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                          // 컬러의 방향 지정
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 239, 107, 18),
                            Colors.white
                          ]),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
              ),
            ),
            //
            Positioned(
              top: isSignupScreen ? 1.sh - 230.h : 1.sh - 260.h,
              left: 140,
              child: Column(
                children: [
                  const Text('or SignUp with'),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Palette.googleColor,
                          foregroundColor: Colors.white,
                          minimumSize: Size(155.w, 40.h)),
                      icon: const Icon(Icons.add),
                      label: const Text('Google')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
