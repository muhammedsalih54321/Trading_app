import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Ui/Components/profileFollowingscreencontainer.dart';

class Profilefollowing extends StatefulWidget {
  const Profilefollowing({super.key});

  @override
  State<Profilefollowing> createState() => _ProfilefollowingState();
}

class _ProfilefollowingState extends State<Profilefollowing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              ' you following',
              style: GoogleFonts.poppins(
                color: Color(0xFF7E57C2),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Text(
                  ' 120',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                Text(
                  ' Person',
                  style: GoogleFonts.poppins(
                    color: Color(0xFFE4E4E4),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 20.h,
            ),
            Container(
              height: 48.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xFF131313)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search  ',
                        hintStyle: GoogleFonts.inter(
                          color: Color(0xFF616161),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                        prefixIcon: Icon(
                          BootstrapIcons.search,
                          color: Color(0xFF616161),
                          size: 20.sp,
                        )),
                    obscureText: true,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
             Expanded(
                child: ListView.builder(padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Profilefollowingscreencontainer();
              },
            ))
          ],
        ),
      )),
    );
  }
}
