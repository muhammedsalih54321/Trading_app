import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Ui/Components/tabbarview1/Copiers/copiers.dart';

import 'package:trading_app/Ui/Components/tabbarview1/Order.dart';

import 'package:trading_app/Ui/Components/tabbarview1/Overview.dart';

class Personoverview extends StatefulWidget {
  const Personoverview({super.key});

  @override
  State<Personoverview> createState() => _PersonoverviewState();
}

class _PersonoverviewState extends State<Personoverview> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF1E1E1E),
        appBar: AppBar(
          backgroundColor: Color(0xFF1E1E1E),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                 size: 20.sp,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  BootstrapIcons.share,
                  color: Colors.white,
                  size: 20.sp,
                ))
          ],
        ),
        body: Column(
          children: [
            ListTile(
                leading: Image.asset(
                  'assets/images/img2.png',
                  height: 50.h,
                  width: 50.w,
                ),
                title: Text(
                  'BGUSER -H3LA8VRR',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                subtitle: Text(
                  '@BGUSER -H3LA8VRR',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF505050),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 0,
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
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 171.h,
              width: 360.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xFF131313)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Equity (USDT)',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF797979),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                              Text('******',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Orders',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF797979),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                              Text('298',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Days Joined',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF797979),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                              Text('1,136',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Trading Freq',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF797979),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                              Text('1',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 40.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Profit-Sharing Ratio',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF797979),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  )),
                              Text('12%',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: TabBar(
                tabs: [
                  Tab(
                    child: Text('Overview',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        )),
                  ),
                  Tab(
                    child: Text('orders',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        )),
                  ),
                  Tab(
                    child: Text('Copiers',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        )),
                  ),
                ],
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color(0xFF28DAA6),
                unselectedLabelColor: Color(0xFF616161),
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [Overview(), Order(), Copiers()],
            ))
          ],
        ),
      ),
    );
  }
}
