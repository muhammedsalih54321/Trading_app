import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Historyscreen extends StatefulWidget {
  const Historyscreen({super.key});

  @override
  State<Historyscreen> createState() => _HistoryscreenState();
}

class _HistoryscreenState extends State<Historyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF1E1E1E),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('TOTAL  PROFIT',
                style: GoogleFonts.poppins(
                  color: Color(0xFF616161),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  height: 0.15,
                  letterSpacing: -0.32,
                )),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Text('7625.20',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF388E3C),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.32,
                    )),
                Positioned(
                  left: 75.w,
                  child: Text('USD',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF616161),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.32,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: .3,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('CLOSED POSITIONS',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  height: 0.15,
                  letterSpacing: -0.32,
                )),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('SYMBOL',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF393939),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0.15,
                      letterSpacing: -0.32,
                    )),
                Text('SIDEL',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF393939),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0.15,
                      letterSpacing: -0.32,
                    )),
                Text('PROFITE',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF393939),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0.15,
                      letterSpacing: -0.32,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 425.h,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFF282828)),
                    )),
                    height: 75.h,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15),
                      child: Container(
                        width: double.infinity,
                        child: SizedBox(
                          height: 70.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('XAUUSD',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.32,
                                      )),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text('VOLUME',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF616161),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text('VOLUME',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF616161),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      )),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 19.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.r),
                                        color: Color(0x2B069334)),
                                    child: Center(
                                      child: Text('BUY',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFF388E3C),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.32,
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text('close time',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF616161),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text('2024-06-13 12:30:12',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF616161),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      )),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('134.40',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF388E3C),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      )),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text('close price',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF616161),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text('2330.92',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF616161),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Text('No more data available',
                style: GoogleFonts.poppins(
                  color: Color(0xFF616161),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 0,
                )),
          )
        ],
      )),
    );
  }
}
