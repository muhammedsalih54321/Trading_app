import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: 131.h,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 26.h,
                        width: 49.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: Color(0x1928DAA6),
                        ),
                        child: Center(
                          child: Text('Long',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF28DAA6),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('50X',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF28DAA6),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('CRIPTOBITE',
                          style: GoogleFonts.poppins(
                            color: Color(0xFFE4E4E4),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 26.h,
                        width: 52.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: Color(0x21616161),
                        ),
                        child: Center(
                          child: Text('cross',
                              style: GoogleFonts.poppins(
                                color: Color(0xEE5E5E5E),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('65,604.5',
                              style: GoogleFonts.poppins(
                                color: Color(0xFFE4E4E4),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text('Entry price',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF616161),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              )),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('65,604.5',
                              style: GoogleFonts.poppins(
                                color: Color(0xFFE4E4E4),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                          Text('Exit price',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF616161),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('1.45%',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF388E3C),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                          Text('ROL',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF616161),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text('06/18 05:50:41',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF616161),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          )),
                      SizedBox(
                        width: 68.w,
                      ),
                      Text('06/18 05:50:41',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF616161),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          )),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
