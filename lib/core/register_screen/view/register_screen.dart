import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/custom_data.dart';
import '../../../utils/constants/text_controllers.dart';
import '../../../utils/constants/text_styles.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../../login/view/login_screen.dart';
import '../../onboard_screen/view/onboard_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
          filter:  ImageFilter.blur(sigmaX: 5.0, sigmaY:5.0),
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

                                    if(selectedIndex==0){
                                      Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: LoginScreen()));
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
                  child: Text.rich(
                     TextSpan(
                       children: [
                         TextSpan(text: 'Hello',style:extraLargeText),
                         TextSpan(text: ' Beautiful',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: colorWhite)),

                       ],
                     )),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(right: 100,left: 15).r,
                  child: Text(
                    "Enter Your info below login with social account",style: mediumText,),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left:15,right:15,top:30 ).r,
                  child: customTextfield(
                      txt: "Email Address", ic: Icons.mail, cntr: textControllers().emailField),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left:15,right:15,top:30 ).r,
                  child: customTextfield(
                      txt: "Password", ic: Icons.mail, cntr: textControllers().passwordField),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left:15,right:15,top:30 ).r,
                  child: customTextfield(
                      txt: "Password Again", ic: Icons.mail, cntr: textControllers().passwordField),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 60.w,
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
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: OnboardScreen()));

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorRed,
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
