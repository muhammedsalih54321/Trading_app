import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Ui/Components/profilepagecontainer.dart';
import 'package:trading_app/Ui/Components/profilepagetile.dart';
import 'package:trading_app/Ui/Screens/Profile/ProfileEditing.dart';
import 'package:trading_app/Ui/Screens/Profile/ProfileFollowing.dart';
import 'package:trading_app/Ui/Screens/Profile/ProfileHistory.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor:Color(0xFF1E1E1E),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Profileediting()));
                      },
                      icon: Icon(
                        BootstrapIcons.pencil_square,
                        color: Colors.grey,
                      ))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: Image.asset(
                    'assets/images/img6.png',
                    height: 86.h,
                    width: 86.w,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text('Muhammed Jamsheer',
                  style: GoogleFonts.poppins(
                    color: Color(0xFFE4E4E4),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 3.h,
              ),
              Text('7736313364',
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF6F6F70),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 20.h,
              ),
              Profilepagecontainer(),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 60.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (_)=>Profilehistory())),
                      child: Container(
                        width: 174.w,
                        height: 60.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF7E57C2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.history,
                                color: Color(0xFFE4E4E4),
                                size: 25.sp,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text('History',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xFFE4E4E4),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                       onTap: () => Navigator.push(context,MaterialPageRoute(builder: (_)=>Profilefollowing())),
                      child: Container(
                        width: 174.w,
                        height: 60.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF7E57C2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                BootstrapIcons.person_dash,
                                color: Color(0xFFE4E4E4),
                                size: 25.sp,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text('followings',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xFFE4E4E4),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                children: [
                  Text('advanced settings',
                      style: GoogleFonts.montserrat(
                        color: Color(0xFF616161),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      )),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Profilepagetile(
                icon1: Icon(
                  BootstrapIcons.bell,
                  color: Color(0xFF7C7C7C),
                ),
                name: 'Notification',
                color: Color(0xFF7C7C7C),
              ),
              Profilepagetile(
                icon1: Icon(
                  BootstrapIcons.shield_check,
                  color: Color(0xFF7C7C7C),
                ),
                name: 'Security',
                color: Color(0xFF7C7C7C),
              ),
              Profilepagetile(
                icon1: Icon(
                  BootstrapIcons.clipboard,
                  color: Color(0xFF7C7C7C),
                ),
                name: 'Terms&Condition',
                color: Color(0xFF7C7C7C),
              ),
              Profilepagetile(
                icon1: Icon(
                  BootstrapIcons.chat_square_dots,
                  color: Color(0xFF7C7C7C),
                ),
                name: 'FAQ',
                color: Color(0xFF7C7C7C),
              ),
              Profilepagetile(
                icon1: Icon(
                  BootstrapIcons.box_arrow_right,
                  color: Color(0xFFE61313),
                ),
                name: 'Log Out',
                color: Color(0xFFE61313),
              )
            ],
          ),
        ),
      )),
    );
  }
}
