import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Ui/Components/Sfchart.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  String dropdownvalue = 'one';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
          
            Row(
              children: [
                Text('Asset allocation',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    )),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  BootstrapIcons.info_circle,
                  color: Color(0xFF616161),
                  size: 18.sp,
                ),
                SizedBox(
                  width: 126.2.w,
                ),
                DropdownButton<String>(
                  dropdownColor: Colors.black,
                  icon: Icon(
                    BootstrapIcons.caret_down_fill,
                    color: Color(0xFF616161),
                    size: 17.sp,
                  ),
                  value: dropdownvalue,
                  items: [
                    DropdownMenuItem(
                      value: 'one',
                      child: Text('Last 7 days',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF616161),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          )),
                    ),
                    DropdownMenuItem(
                      value: 'Two',
                      child: Text('Last 7 days',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF616161),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          )),
                    ),
                    DropdownMenuItem(
                      value: 'Three',
                      child: Text('Last 7 days',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF616161),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          )),
                    )
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      dropdownvalue = value!;
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Sfchart(),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.h,
                  width: 100.w,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                              child: CircleAvatar(
                                radius: 6.r,
                                backgroundColor: Color(0xFF7E57C2),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('CRIPTOBITE',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF616161),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                              Text('57.15%',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40.w,),
                 Container(
                  height: 50.h,
                  width: 100.w,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                              child: CircleAvatar(
                                radius: 6.r,
                                backgroundColor: Color(0xFF28DAA6),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('CRIPTOBITE',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF616161),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                              Text('42.85%',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
