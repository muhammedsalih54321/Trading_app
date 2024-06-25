import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/Ui/Components/tabbarview1/Copiers/copierstile.dart';

class Copiers extends StatelessWidget {
  const Copiers({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          child: Container(
                            height: 88.h,
                            width: double.infinity,
                       
                            child: 
                            Copierstile()
                              
                           
                          ),
                        );
                      },
                    ),
                  ),
                );
  }
}