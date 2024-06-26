import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/Ui/Screens/Loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 836),
        builder: (BuildContext context, Widget? child) {
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(splashColor: Colors.transparent),
       
        home:Loginpage()
      );}
    );
  }
}
