import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepagecontainer extends StatelessWidget {
  const Profilepagecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
            children: [
              Container(
               
                width: double.infinity.w,
                height: 155.h,
                decoration: ShapeDecoration(
                  color: Color(0xFF131313),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0x0CE4E4E4)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Positioned(
                top: 20.h,
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
                top: 53.h,
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
                  top:50.h,
                  left: 150.w,
                  child: Image.asset(
                    'assets/images/img13.png',
                    height: 12.h,
                    width: 14.67.w,
                  )),
              Positioned(
                top: 55.h,
                left: 170.w,
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
                top: 88.h,
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
                top: 108.h,
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
                top: 20.h,
                left: 280.w,
                child: Container(
                  height: 19.h,
                  width: 56.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Color(0x287E57C2),
                  ),
                  child: Center(
                    child: Text('BUY',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF7E57C2),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        )),
                  ),
                ),
              ),
            ],
          );
  }
}