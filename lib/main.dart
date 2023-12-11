import 'package:flutter/material.dart';
import 'package:flutter_chat_app/views/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//   await const Firebase.initializeApp(
//     options = DefaultFirebaseOptions.currentPlatform, {super.key},
// );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(480, 790),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'choigoyo chat app',
          home: child,
        );
      },
      child: const LoginSignUpScreen(),
    );
  }
}
