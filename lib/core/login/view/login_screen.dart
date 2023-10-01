import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/custom_data.dart';
import '../../../utils/constants/text_controllers.dart';
import '../../../utils/constants/text_styles.dart';
import '../../../utils/widgets/bottom_bar.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../../register_screen/view/register_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
          ),
          child:  BackdropFilter(
            filter:  ImageFilter.blur(sigmaX: 2.0, sigmaY:2.0),
            child: SingleChildScrollView(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 54),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40.w,
                          width: 230.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: false,
                              itemCount: customData().litems.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex = index;

                                      if(selectedIndex==1){
                                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: RegisterScreen()));
                                      }
                                    });

                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent.withOpacity(0.0),
                                  ),
                                  child: Text(customData().litems[index],
                                    style:selectedIndex == index ? authText:largeText,
                                  ),
                                );
                              }),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(right: 10).r,
                          child: const CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: Colors.black,
                            child:
                                Icon(Icons.person, color: Colors.white, size: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top:40,right: 150).r,
                    child: Text(
                        "Welcome Back",style: extraLargeText,),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 240).r,
                    child: Text(
                      "Rebbaca",style: extraLargeBoldText,),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left:15,right:15,top:80 ).r,
                    child: customTextfield(
                        txt: "Email Address", ic: Icons.mail, cntr:textControllers().emailField),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left:15,right:15,top:30 ).r,
                    child: customTextfield(
                        txt: "Password", ic: Icons.mail, cntr: textControllers().passwordField),
                  ),
                 const SizedBox(height: 20,),
                  SizedBox(
                    height: 70.w,
                    width: 380.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: false,
                        itemCount: customData().social_icon.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SvgPicture.asset(
                            customData().social_icon[index],
                            fit: BoxFit.cover,
                            width: 70.w,
                            height: 70.h,
                          );
                        }),
                  ),
                  SizedBox(height: 100.h),
                  Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0).r,
                          child: Text("Forgot Password ?",style: largeText,),
                        ),
                        SizedBox(
                          width: 120.w,
                          height: 60.h,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: BottomBarScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorsYellow,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Icon(Icons.arrow_forward_rounded,color: colorWhite,),
                          ),
                        ),
                      ],
                    )
                    ,
                  ),

                ],
              ),
            ),
          ),
        ),

    );
  }
}
