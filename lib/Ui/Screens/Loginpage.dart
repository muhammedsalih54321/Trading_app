import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Ui/Components/Bottomnavigation.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Color(0xFF181818),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 239.h,
            ),
            Container(
              width: double.infinity,
              height: 491.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38.r),
                    topRight: Radius.circular(38.r)),
                color: Colors.black.withOpacity(0.07999999821186066),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60.h,
                      ),
                      Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          color: Color(0xFFFAFAFA),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                        ),
                      ),
                      Text(
                        'Enter your user name to login for this app',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF616161),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 4,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        height: 58.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Color(0xFF1A1A1A)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                 
                                  labelText: 'User Name',
                                  labelStyle:  GoogleFonts.poppins(
                                    color: Color(0xFF7C7C7C),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0.10,
                                  )
                                  ),
                                  
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 58.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Color(0xFF1A1A1A)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Center(
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Enter password  ',
                                  labelStyle: GoogleFonts.poppins(
                                    color: Color(0xFF7C7C7C),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 0.10,
                                  ),
                                  suffixIcon: Icon(
                                    BootstrapIcons.eye,
                                    color: Colors.white,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'forget password',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF7C7C7C),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (_)=>Bottomnavigation())),
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Color(0xFF7E57C2)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Login',
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      height: 0.10),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Icon(
                                  BootstrapIcons.arrow_right,
                                  color: Colors.white,
                                  size: 20.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor:Color(0xFF7E57C2) ,
                            value: ischecked,
                            onChanged: (value) {
                              setState(() {
                                ischecked = !ischecked;
                              });
                            },
                          ),
                          Text(
                            'I under stand that Cryptobite cannot recover\nthis password for me',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF7C7C7C),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
