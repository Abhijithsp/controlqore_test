import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/svg/success.svg",
              fit: BoxFit.cover,
              height: 320.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Your Request",
              style: smallTextBlack,
            ),
            Text(
              'Successfully Completed',
              style: mediumTextBlack,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: smallText,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: SizedBox(
                    width: 350.w,
                    height: 70.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ButtonColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      child: Text("Done", style: normalDataText),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
