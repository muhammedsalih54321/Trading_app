
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepagetile extends StatefulWidget {
  final Icon icon1;
  final String name;
  final Color color;
  
  const Profilepagetile({super.key, required this.icon1, required this.name, required this.color});

  @override
  State<Profilepagetile> createState() => _ProfilepagetileState();
}

class _ProfilepagetileState extends State<Profilepagetile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:widget.icon1,
      title: Text(widget.name,
          style: GoogleFonts.montserrat(
            color:widget.color,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 0,
          )),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Color(0xFF7C7C7C),
        
      ),
    );
  }
}
