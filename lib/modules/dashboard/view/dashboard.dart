import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_styles.dart';
import '../../../utils/widgets/nav_bar.dart';
import '../data/data_response.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;
  final List<String> imgList = ['1', '2', '3'];

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
                        "Devon Lane",
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
                      child: SizedBox(
                        height: 55.h,
                        child: const Card(
                          elevation: 4,
                          color: colorWhite,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Search',
                                prefixIcon:
                                    Icon(Icons.search, color: colorWhite),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 125.h,
                        width: double.infinity,
                        child: CarouselSlider(
                          options: CarouselOptions(
                              autoPlay: true,
                              viewportFraction: 1.0,
                              enlargeCenterPage: false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                          items: [
                            Container(
                                color: colorsPink,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Get 40% On Cleaning',
                                                style: smallText),
                                            Text(
                                              'Code:CLNT158',
                                              style: smallTextBlack,
                                            ),
                                            SizedBox(
                                              height: 32.h,
                                              width: 105.w,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ButtonColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                child: Text("Book Now",
                                                    style: smallTextWhite),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 1),
                                          child: SizedBox(
                                            height: 90.h,
                                            width: 90.w,
                                            child: SvgPicture.asset(
                                              "assets/svg/carosal.svg",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children:
                                          imgList.asMap().entries.map((entry) {
                                        return GestureDetector(
                                          onTap: () => buttonCarouselController
                                              .animateToPage(entry.key),
                                          child: Container(
                                            width: 25.0,
                                            height: 5.0,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 4.0),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                color: (Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Colors.white
                                                        : Colors.black)
                                                    .withOpacity(
                                                        _current == entry.key
                                                            ? 0.9
                                                            : 0.4)),
                                          ),
                                        );
                                      }).toList(),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Text(
                        "Select Service For Repair",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 250.h,
                        child: GridView.count(
                          crossAxisCount: 3,
                          children: List.generate(listData.length, (index) {
                            return SizedBox(
                              height: 40.h,
                              width: 100.w,
                              child: Card(
                                color: colorWhite,
                                elevation: 0.5,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 80.h,
                                      width: 100.w,
                                      child: SvgPicture.asset(
                                        listData[index]['image'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      listData[index]['name'],
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Text(
                        "Service Request",
                        style: mediumTextBlack,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 105,
                        width: double.infinity,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, position) {
                            return SizedBox(
                              width: 300.w,
                              child: Card(
                                elevation: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                'Home Cleaning',style: TextStyle(fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Container(
                                                width: 30.w,
                                                height: 20.h,
                                                  decoration: const BoxDecoration(
                                                    color: colorsPink,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  child: Center(
                                                    child: Text(
                                                      '4.4',
                                                      style: TextStyle(color: Colors.redAccent),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                          const Text.rich(TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: '\$',
                                                  style: TextStyle(
                                                      color: colorGold)),
                                              TextSpan(
                                                  text: '24/h ',
                                                  style: TextStyle(
                                                      color: colorGold)),
                                              TextSpan(
                                                text: ' off  30%',
                                                style: TextStyle(
                                                  color: brownBottomBarRound,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          )),
                                          Text(
                                            'By ASAS Cleaning',
                                            style: smallTextGrey,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 100.h,
                                        width: 100.w,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/sample.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, position) {
                            return const SizedBox(width: 20);
                          },
                          itemCount: 10,
                        ),
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
