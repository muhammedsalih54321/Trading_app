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
      backgroundColor: Color(0xFF181818),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      color: const Color.fromARGB(255, 179, 173, 156),
                        border: Border(
                            bottom: BorderSide(width: 1, color: Color(0xFF282828)),)),
                    height: 75.h,
                    width: double.infinity,
                    child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        height: 75.h,
                        color: const Color.fromARGB(255, 235, 138, 138),
                        child:  Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('XAUUSD',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              color: Color(
                                                                  0xFFE4E4E4),
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 0,
                                                            )),
                                                        SizedBox(
                                                          height: 2.h,
                                                        ),
                                                        Text('Entry price',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              color: Color(
                                                                  0xFF616161),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                            )),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text('65,604.5',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              color: Color(
                                                                  0xFFE4E4E4),
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 0,
                                                            )),
                                                        Text('Exit price',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              color: Color(
                                                                  0xFF616161),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                            ))
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text('1.45%',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              color: Color(0xFF388E3C),
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 0,
                                                            )),
                                                        Text('ROL',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              color: Color(
                                                                  0xFF616161),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                            ))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                            
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
