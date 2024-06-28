import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilehistory extends StatefulWidget {
  const Profilehistory({super.key});

  @override
  State<Profilehistory> createState() => _ProfilehistoryState();
}

class _ProfilehistoryState extends State<Profilehistory> {
  String dropdownvalue = 'one';
  List<String> img = [
    'assets/images/img2.png',
    'assets/images/img7.png',
    'assets/images/img8.png',
    'assets/images/img9.png',
    'assets/images/img10.png',
    'assets/images/img11.png',
    'assets/images/img12.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Total profit',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '+\$2070.00',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF388E3C),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 80.w,
                ),
                DropdownButton<String>(
                  hint: Text('Last 7 days ',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF616161),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      )),
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              Text('Current profit  ',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF616161),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: -1
                  )),
              Text(
                '\$105.00',
                style: GoogleFonts.poppins(
                  color: Color(0xFFE4E4E4),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  height: -1,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: img.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  height: 68.h,
                  width: double.infinity,
                  child: ListTile(
                    leading: Image.asset(img[index],height: 50.h,width: 50.w,),
                    title: Text(
                      'Ethereum',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    subtitle: Text(
                      'ETH',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF505050),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          '\$503.12',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                         SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          '50 ETH',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF505050),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Text(
              'No more data available',
              style: GoogleFonts.poppins(
                color: Color(0xFF696969),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          )
        ],
      )),
    );
  }
}
