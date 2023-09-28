import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../modules/dashboard/view/dashboard.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_styles.dart';
import '../../../utils/router/router_variables.dart';
import '../../../utils/widgets/bottom_bar.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../../login/view/login_screen.dart';


class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  TextEditingController _emailField = TextEditingController();

  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: blackPearl,
      body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0).r,
            child: Container(
                height: 250.h,
                width: 250.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/onboard.png"),
                      fit: BoxFit.fill),
                )),
          ),
          SizedBox(height: 10.h),
        Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(top:100,right: 150).r,
              child: Text(
                "Hello Beautiful",style: extraLargeText,),
            ),
            Padding(
              padding:
              const EdgeInsets.only(right: 150,left: 15,bottom: 50).r,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: smallText,),
            ),
          ],
        ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0).r,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: BottomBarScreen()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorRed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Icon(Icons.arrow_forward_rounded,color: colorWhite,),
              ),
            )
            ,
          )

        ],
      ),

    );
  }
}
