import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Ui/Components/tabbarview2/current.dart';
import 'package:trading_app/Ui/Components/tabbarview2/history.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
    String dropdownvalue = 'one';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
                  length: 2,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 38.h,
                                width: 195.w,
                                child: Center(
                                  child: TabBar(
                                    labelColor: Color(0xFFB1B1B1),
                                    unselectedLabelStyle:
                                        TextStyle(color: Color(0xFF454545)),
                                    dividerColor: Colors.transparent,
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    indicatorWeight: 2,
                                    indicator: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: Color(0x26616161)),
                                    tabs: [
                                      Tab(
                                        child: Text('History',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            )),
                                      ),
                                      Tab(
                                        child: Text('current',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              DropdownButton<String>(
                                hint: Text('Details '),
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
                                    child: Text('Details',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF616161),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        )),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Two',
                                    child: Text('Details',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF616161),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        )),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Three',
                                    child: Text('Details',
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
                          Expanded(
                              child: TabBarView(children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  History()
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Current()
                                ],
                              ),
                            )
                          ]))
                        ],
                      ),
                    ),
                  ),
                );
  }
}