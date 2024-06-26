import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreencontainer extends StatelessWidget {
  const Homescreencontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    height: 230.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                         color: Color(0xFF131313)
                         ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        ListTile(
                            leading: Stack(
                              clipBehavior: Clip.none,
                              children: [
                             Image.asset('assets/images/img2.png',height:50.h,width:50.w,),
                                Positioned(
                                    top: 35.h,
                                    left: -2,
                                    child: Image.asset(
                                      'assets/images/img3.png',
                                      height: 25.h,
                                      width: 25.w,
                                    )),
                              ],
                            ),
                            title: Text(
                              'Income _source',
                              style: GoogleFonts.poppins(
                                color: Color(0xFFFAFAFA),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 0.12,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/img4.png',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    'High achiever',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            trailing: Container(
                              height: 31.h,
                              width: 66.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.r),
                                  color: Color(0xFF7E57C2)),
                              child: Center(
                                child: Text(
                                  'follow',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:15),
                          child: Divider(
                            thickness: .3,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SizedBox(
                            height: 50.h,
                            width: double.infinity,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Gain',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFF616161),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          )),
                                      Text('24.76%',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFF008A0E),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Copiers',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFF616161),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          )),
                                      Text('95',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFFFAFAFA),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Commission',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFF616161),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          )),
                                      Text('38%',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFFFAFAFA),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Profit and loss',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF616161),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$ 7135.01',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  )),
                                    Text('\$ 0.00',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(
                            thickness: 2,
                            color: Color(0xFF388E3c),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}