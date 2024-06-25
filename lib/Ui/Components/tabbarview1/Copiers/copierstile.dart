import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Copierstile extends StatelessWidget {
  const Copierstile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: CircleAvatar(
                radius: 30.r,
                child: Image.asset('assets/images/img5.png'),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Text('PERSON',
                    style: GoogleFonts.poppins(
                      color: Color(0xFFFEFEFE),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0.12,
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Text('total vol: 33,22.55589USDT',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF616161),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 0.14,
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Text('Profit +720.0779USDT',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF388E3C),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 0.14,
                    )),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 6.5.h,
        ),
        Divider(
          thickness: .2,
          color: Colors.grey,
        )
      ],
    );
  }
}
