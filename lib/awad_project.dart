import 'package:awadproject/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AwadProject extends StatelessWidget {
  const AwadProject({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(812,375),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProfileScreen(),
      ),
    );
  }
}