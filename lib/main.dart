import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/Bloc/Login/login_bloc.dart';
import 'package:trading_app/Bloc/Tradersdata/tradersdata_bloc.dart';
import 'package:trading_app/Ui/Screens/Loginpage.dart';
import 'package:trading_app/Ui/Screens/Splash.dart';

void main() {
  runApp(const MyApp());
}

String basePath1 = 'http://13.50.248.113:3993/auth';
String basePath2 = 'http://13.50.248.113:3993/api';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 836),
        builder: (BuildContext context, Widget? child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LoginBloc(),
              ),
              BlocProvider(
                create: (context) => TradersdataBloc(),
              )
            ],
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(splashColor: Colors.transparent),
                home: Splash()),
          );
        });
  }
}
