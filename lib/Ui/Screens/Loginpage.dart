import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trading_app/Bloc/Login/login_bloc.dart';
import 'package:trading_app/Repository/Model/usre_login.dart';
import 'package:trading_app/Ui/Components/Bottomnavigation.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  late Loginmodel login;
  final username = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var isobscure;
  bool ischecked = false;
  void submit() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      BlocProvider.of<LoginBloc>(context)
          .add(FetchloginEvent(email: username.text, password: password.text));
    }
    formKey.currentState!.save();
  }

  @override
  void initState() {
    isobscure = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 20.sp,
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
                border: Border(
                  left: BorderSide(),
                  top: BorderSide(width: .2.w),
                  right: BorderSide(),
                  bottom: BorderSide(),
                ),
                color: Colors.black.withOpacity(0.07999999821186066),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 55.h,
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
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: username,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF262626),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF262626))),
                              focusedBorder: InputBorder.none,
                              labelText: 'User Name',
                              labelStyle: GoogleFonts.poppins(
                                color: Color(0xFF7C7C7C),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              )),
                          validator: (email) {
                            if (email!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(email)) {
                              return 'Enter a valid email!';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          controller: password,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF262626),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF262626))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF262626)),
                                  borderRadius: BorderRadius.circular(8.r)),
                              labelText: 'Enter password  ',
                              labelStyle: GoogleFonts.poppins(
                                color: Color(0xFF7C7C7C),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isobscure = !isobscure;
                                    });
                                  },
                                  icon: isobscure
                                      ? Icon(
                                          BootstrapIcons.eye,
                                          color: Colors.white,
                                          size: 20.sp,
                                        )
                                      : Icon(
                                          BootstrapIcons.eye_slash,
                                          color: Colors.white,
                                          size: 20.sp,
                                        ))),
                          obscureText: isobscure,
                          validator: (password) {
                            if (password!.isEmpty || password.length < 6) {
                              return 'Enter a valid password!';
                            }
                            return null;
                          },
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
                          height: 45.h,
                        ),
                        BlocListener<LoginBloc, LoginState>(
                          listener: (context, state) {
                            if (state is Loginblocloading) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                              );
                            }
                            if (state is Loginblocerror) {
                              Navigator.of(context).pop();
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Center(
                                    child: Text(
                                      'Something Wrong',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  );
                                },
                              );
                            }
                            if (state is Loginblocloaded) {
                              login = BlocProvider.of<LoginBloc>(context)
                                  .loginmodel;
                              token(login.access.toString());
                              Navigator.of(context).pop();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Bottomnavigation()));
                            }
                          },
                          child: GestureDetector(
                            onTap: () {
                              submit();
                            },
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
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Color(0xFF7E57C2),
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
              ),
            )
          ],
        ),
      ),
    );
  }

  void token(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('Token', token);
  }
}
