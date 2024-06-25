import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Sfchart extends StatefulWidget {
  const Sfchart({super.key});

  @override
  State<Sfchart> createState() => _SfchartState();
}

class _SfchartState extends State<Sfchart> {
  Map<String, double> dataMap = {
    "CRIPTOBITE": 42.85,
    "CRIPtOBITE": 58.15,
  };

  List<Color> colorList = [
    Color(0xFF28DAA6),
    Color(0xFF7E57C2),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 80,
          child: Column(
            children: [
              Text('CRIPTOBITE',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF616161),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  )),
              Text('57.15%',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  )),
            ],
          ),
        ),
        PieChart(
          chartType: ChartType.ring,
          dataMap: dataMap,
          colorList: colorList,
          chartRadius: MediaQuery.of(context).size.width / 2,
          ringStrokeWidth: 30,
          animationDuration: const Duration(seconds: 3),
          chartValuesOptions: const ChartValuesOptions(showChartValues: false),
          legendOptions: const LegendOptions(
              showLegends: false,
              legendShape: BoxShape.circle,
              legendTextStyle: TextStyle(
                color: Color(0xFF616161),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              legendPosition: LegendPosition.bottom,
              showLegendsInRow: true),
        ),
      ],
    );
  }
}

class SalesData {
  SalesData(
    this.year,
    this.sales,
  );
  final String year;
  final double sales;
}


