import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trading_app/Ui/Screens/Home/Home.dart';
import 'package:trading_app/Ui/Screens/Loginpage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateotherscreen();
  }
 _navigateotherscreen()async{
  await Future.delayed(Duration(seconds: 3), ()async{
final SharedPreferences prefs = await SharedPreferences.getInstance();

if(prefs.containsKey("Token")){
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
}else{
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
}

  });
 
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 51.h,
                  width: 282.78,
                  child: Image.asset(
                    'assets/images/img1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                
          SizedBox(
            height: 15.h,
          ),
          Text(
            textAlign: TextAlign.center,
            'Copy top traders and leverage their expertise\nto maximize your crypto portfolio',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
             
            ),
          ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
