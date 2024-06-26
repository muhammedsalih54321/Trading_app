import 'dart:ui';

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Ui/Screens/History.dart';
import 'package:trading_app/Ui/Screens/Home/Home.dart';
import 'package:trading_app/Ui/Screens/Market.dart';
import 'package:trading_app/Ui/Screens/Profile/Profile.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  final screen = [
    Homescreen(),
    Historyscreen(),
    Marketscreen(),
    Profilescreen()
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFF1E1E1E),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              iconSize: 25.sp,
              backgroundColor: Colors.black.withOpacity(0.10000000149011612),
              selectedItemColor: Color(0xFF28DAA6),
              showUnselectedLabels: true,
              unselectedItemColor: Color(0xFF616161),
              selectedLabelStyle: GoogleFonts.poppins(
                color: Color(0xFF4CD6AB),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              unselectedLabelStyle: GoogleFonts.poppins(
                  color: Color(0xFF616161),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  height: 0),
              currentIndex: currentindex,
              onTap: (index) {
                setState(() {
                  currentindex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    BootstrapIcons.house,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.history,
                    ),
                    label: 'History'),
                BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.chartColumn,
                    ),
                    label: 'Market'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline_rounded,
                    ),
                    label: 'Profile'),
              ]),
        ),
      ),
      // ),
      body: screen[currentindex],
    );
  }
}
