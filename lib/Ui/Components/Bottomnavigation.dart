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
      bottomNavigationBar: 
     
         ClipRRect(
           child: BackdropFilter(
             filter: ImageFilter.blur(sigmaX: 8,sigmaY: 8),
             child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              iconSize: 25.sp,
                backgroundColor: Colors.transparent,
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
           
                    icon: Icon(BootstrapIcons.house,
                        color: currentindex == 0
                            ? Color(0xFF28DAA6)
                            : Color(0xFF616161)),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.history,
                        color: currentindex == 1
                            ? Color(0xFF28DAA6)
                            : Color(0xFF616161),
                      ),
                      label: 'History'),
                  BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.chartColumn,
                          color: currentindex == 2
                              ? Color(0xFF28DAA6)
                              : Color(0xFF616161)),
                      label: 'Market'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline_rounded,
                          color: currentindex == 3
                              ? Color(0xFF28DAA6)
                              : Color(0xFF616161)),
                      label: 'Profile'),
                ]
                   ),
           ),
         ),
      body: screen[currentindex],
    );
  }
}



//  GlassmorphicContainer(
        
//         width: MediaQuery.of(context).size.width,
//         height:60.h,
//         borderRadius: 0,
//         linearGradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Colors.black.withOpacity(0.10000000149011612),
//               Colors.black.withOpacity(0.10000000149011612)
//             ],
//             stops: [
//               0.1,
//               1,
//             ]),
//         border: 0,
//         blur: 20,
//         borderGradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.black.withOpacity(0.10000000149011612),
//             Colors.black.withOpacity(0.10000000149011612)
//           ],
//         ),