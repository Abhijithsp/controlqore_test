import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_styles.dart';
import '../../../utils/widgets/bottom_bar.dart';


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
              const EdgeInsets.only(left: 20,top:50,right: 50).r,
              child: Text(
                "Let's Make\nConnection with Pros",style: extraLargeText,),
            ),
            Padding(
              padding:
              const EdgeInsets.only(right: 60,left: 15,bottom: 50).r,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",style: smallTextOnboard,),
            ),
          ],
        ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: const EdgeInsets.only(right: 40.0).r,
              child: SizedBox(
                width: 120.w,
                height: 60.h,
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
              ),
            )
            ,
          )

        ],
      ),

    );
  }
}
