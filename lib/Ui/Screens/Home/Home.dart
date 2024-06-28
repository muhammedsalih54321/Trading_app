import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/Bloc/Tradersdata/tradersdata_bloc.dart';
import 'package:trading_app/Repository/Model/traders_data.dart';
import 'package:trading_app/Ui/Components/Homescreencontainer.dart';
import 'package:trading_app/Ui/Screens/Home/personoverview.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late List<Tradersdatamodel> tradersdata;
  @override
  void initState() {
   BlocProvider.of<TradersdataBloc>(context).add(Fetchtradersdata());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.h,
                  width: 120.w,
                  child: Image.asset(
                    'assets/images/img1.png',
                    height: 50.h,
                    width: 50.w,
                  ),
                ),
                Stack(
                  children: [
                    Icon(
                      BootstrapIcons.bell,
                      color: Colors.white,
                      size: 25.sp,
                    ),
                    Positioned(
                      top: 5.h,
                      left: 16.w,
                      child: CircleAvatar(
                          radius: 4.r, backgroundColor: Colors.red),
                    )
                  ],
                )
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
            BlocBuilder<TradersdataBloc, TradersdataState>(
              builder: (context, state) {
                if (state is Tradersblocloading) {
                  return Center(child: CircularProgressIndicator(),);
                  
                }if (state is Tradersblocerror) {
                   return RefreshIndicator(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .9,
                          child: Center(child: Text('Oops something went wrong')),
                        ),
                      ),
                      onRefresh: () async {
                        return BlocProvider.of<TradersdataBloc>(context)
                            .add(Fetchtradersdata());
                      },
                    );
                }if (state is Tradersblocloaded) {
                  tradersdata=BlocProvider.of<TradersdataBloc>(context).tradersdatamodel;
                   return Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount:tradersdata.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Personoverview())),
                          child: Homescreencontainer(name: tradersdata[index].name.toString(),));
                    },
                  ),
                );
                }else{
                  return SizedBox();
                }
               
              },
            ),
          ],
        ),
      ),
    );
  }
}
