import 'package:controlqore_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/constants/text_controllers.dart';
import '../../../utils/constants/text_styles.dart';
import '../../../utils/widgets/nav_bar.dart';
import '../../../utils/widgets/success_widget.dart';
import '../../../utils/widgets/textfield_rounded.dart';

class MaintanceScreen extends StatefulWidget {
  MaintanceScreen({super.key});

  @override
  State<MaintanceScreen> createState() => _MaintanceScreenState();
}

class _MaintanceScreenState extends State<MaintanceScreen> {
  List<String> dropdownData = ['A', 'B', 'C', 'D'];
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  var selectedDropdown;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
      drawer: NavDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            height: 400.h,
            width: 400.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Ink(
                      child: SvgPicture.asset(
                        "assets/svg/nav.svg",
                        fit: BoxFit.cover,
                        width: 60.w,
                        height: 60.h,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New maintenance request",
                        style: mediumTextBlack,
                      ),
                      Text(
                        "New Jersey 45326",
                        style: smallTextBlack,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100).r,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(

                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: colorWhite,
                    border: Border.all(color: colorWhite),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Request Type",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blueGrey)),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 50,
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Request Type'),
                          ),
                          // Not necessary for Option 1
                          value: selectedDropdown,
                          onChanged: (newValue) {
                            setState(() {
                              selectedDropdown = newValue;
                            });
                          },
                          items: dropdownData.map((location) {
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Request",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blueGrey)),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 50,
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Request '),
                          ),
                          // Not necessary for Option 1
                          value: selectedDropdown,
                          onChanged: (newValue) {
                            setState(() {
                              selectedDropdown = newValue;
                            });
                          },
                          items: dropdownData.map((location) {
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Building",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blueGrey)),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 50,
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Building '),
                          ),
                          // Not necessary for Option 1
                          value: selectedDropdown,
                          onChanged: (newValue) {
                            setState(() {
                              selectedDropdown = newValue;
                            });
                          },
                          items: dropdownData.map((location) {
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Location",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blueGrey)),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 50,
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Location '),
                          ),
                          value: selectedDropdown,
                          onChanged: (newValue) {
                            setState(() {
                              selectedDropdown = newValue;
                            });
                          },
                          items: dropdownData.map((location) {
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Priority",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blueGrey)),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 50,
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Priority '),
                          ),
                          // Not necessary for Option 1
                          value: selectedDropdown,
                          onChanged: (newValue) {
                            setState(() {
                              selectedDropdown = newValue;
                            });
                          },
                          items: dropdownData.map((location) {
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Description",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customTextfieldRounded(
                          cntr: textControllers().descriptionController,
                          txt: "Type Your Description",
                          address: true),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                "Photos",
                                style: mediumTextBlack,
                              ),
                            ),
                            Container(
                              height: 100.h,
                              width: 150.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.blueGrey)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SvgPicture.asset(
                                  "assets/svg/image_upload.svg",


                                ),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                "Files",
                                style: mediumTextBlack,
                              ),
                            ),
                            Container(
                              height: 100.h,
                              width: 150.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.blueGrey)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SvgPicture.asset(
                                  "assets/svg/file.svg",

                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     SizedBox(height: 25.h,),
                    Container(
                      width: double.infinity,
                      height: 70.h,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const SuccessScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ButtonColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child:  Text("Submit",style: normalDataText),
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
