import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profileeditingpagecontainer extends StatelessWidget {
  const Profileeditingpagecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                      children: [
                        Container(
                            width: double.infinity.w,
                            height: 181.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFF131313),
                              shape: RoundedRectangleBorder(
                                side:
                                    BorderSide(width: 1.w, color: Color(0x0CE4E4E4)),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 135.w,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 112, bottom: 25),
                                  child: VerticalDivider(
                                    thickness: .3,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                          top: 15.h,
                          left: 20.w,
                          child: Text('Holding value',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF616161),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              )),
                        ),
                        Positioned(
                          top: 48.h,
                          left: 20.w,
                          child: Text('\$ 7,625.00',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFE4E4E4),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w600,
                                height: 0.11,
                                letterSpacing: -1.10,
                              )),
                        ),
                        Positioned(
                            top: 73.h,
                            left: 20.w,
                            child: Image.asset(
                              'assets/images/img13.png',
                              height: 12.h,
                              width: 14.67.w,
                            )),
                        Positioned(
                          top: 77.h,
                          left: 40.w,
                          child: Text('\$ 105.00',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF388E3C),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                height: 0.28,
                                letterSpacing: -0.84,
                              )),
                        ),
                        Positioned(
                          top: 110.h,
                          left: 20.w,
                          child: Text('invested value',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF616161),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              )),
                        ),
                        Positioned(
                          top: 130.h,
                          left: 20.w,
                          child: Text('\$5,550.00',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFE4E4E4),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                        ),
                        Positioned(
                          top: 72.h,
                          left: 100.w,
                          child: Container(
                            height: 16.h,
                            width: 47.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Color(0x287E57C2),
                            ),
                            child: Center(
                              child: Text('Today',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF7E57C2),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 72.h,
                          left: 260.w,
                          child: Container(
                            height: 33.h,
                            width: 84.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Color(0xFF1F1F1F),
                            ),
                            child: Center(
                              child: Text('History',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFFD5D5D5),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      height: 0)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110.h,
                          left: 180.w,
                          child: Text('total profit',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF616161),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              )),
                        ),
                        Positioned(
                          top: 130.h,
                          left: 180.w,
                          child: Text('\$2,075',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFE4E4E4),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                        ),
                      ],
                    );
  }
}