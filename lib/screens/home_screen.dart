import 'package:flutter/material.dart';
import 'package:flutter_financial_app/constants/color_constant.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.assistant_navigation,
            color: kBlackColor,
          ),
          onPressed: () {},
          padding: EdgeInsets.only(left: 8.0, top: 16, bottom: 16),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 56,
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: kGradientSlideButton,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.mirror,
              stops: const <double>[0.0, 1.0],
            ),
          ),
          child: ConfirmationSlider(
            onConfirmation: () {},
            height: 56,
            width: MediaQuery.of(context).size.width - 32,
            backgroundColor: Colors.transparent,
            shadow: BoxShadow(
              color: Colors.transparent,
            ),
            foregroundColor: kWhiteColor,
            foregroundShape: BorderRadius.circular(8),
            icon: Icons.rotate_right,
            text: 'Slide for Payment',
            textStyle: GoogleFonts.nunito(
              fontSize: 14,
              color: kWhiteColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            //Card Account Section
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Hi, Mahipal!',
                style: GoogleFonts.nunito(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
            ),

            Container(
              height: 175,
              margin: EdgeInsets.only(top: 15),
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 16, right: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      height: 175,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blueGrey,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x10000000),
                                blurRadius: 10,
                                spreadRadius: 4,
                                offset: Offset(0.0, 8.0))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            top: 12,
                            child: Image.asset(
                              'assets/images/mastercard_logo.png',
                              height: 22,
                              width: 33,
                            ),
                          ),
                          Positioned(
                            right: 12,
                            top: 12,
                            child: SvgPicture.asset(
                                'assets/svg/mastercard_bg.svg'),
                          ),
                          Positioned(
                            top: 14,
                            right: 12,
                            child: Text(
                              'Prambors',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 63,
                            left: 16,
                            child: Text(
                              'Your Balance',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: kGreyColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 81,
                            child: Text(
                              'Rp 6.352.251',
                              style: GoogleFonts.nunito(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 30,
                            child: Text(
                              'Valid Thru',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 12,
                            child: Text(
                              '06/24',
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: kBlackColor),
                            ),
                          ),
                          Positioned(
                            right: 8,
                            bottom: 8,
                            child: SvgPicture.asset(
                              'assets/icons/more_icon_grey.svg',
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            // Last transaction section
            Padding(
              padding:
                  EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Last Transactions',
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor),
                  ),
                  Text(
                    'See all transactions',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: kBlueColor),
                  ),
                ],
              ),
            ),

            Container(
              height: 190,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16, right: 8),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 8),
                    height: 190,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kWhiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x04000000),
                          blurRadius: 10,
                          spreadRadius: 10,
                          offset: Offset(0.0, 8.0),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 16,
                          left: 16,
                          child: SvgPicture.asset(
                            'assets/icons/outcome_icon.svg',
                            height: 24,
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: SvgPicture.asset(
                            'assets/svg/mastercard_bg.svg',
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 16,
                          child: Text(
                            'Outcome',
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: kOrangeColor),
                          ),
                        ),
                        Positioned(
                          top: 64,
                          left: 16,
                          child: Text(
                            '-' + 'Rp 352.000',
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: kOrangeColor),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 106,
                          child: Text(
                            'Received from',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 48,
                          child: Text(
                            'Michael Ballack',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: kBlackColor),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 22,
                          child: Text(
                            '10 Feb 2020',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                        ),
                        Positioned(
                          right: 14,
                          bottom: 16,
                          child: Image.asset(
                            'assets/images/mastercard_logo.png',
                            height: 22,
                            width: 33,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Top Up Section
            Padding(
              padding:
                  EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
              child: Text(
                'Top Up Again',
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
            ),

            Container(
              height: 304,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16, right: 16),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x04000000),
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(0.0, 8.0)),
                        ],
                        color: kWhiteColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhiteGreyColor,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/gopay_logo.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Prambors',
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: kBlackColor),
                                ),
                                Text(
                                  'Gopay',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: kGreyColor),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '+62*** **** 1932',
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: kGreyColor),
                            ),
                            SizedBox(
                              width: 16,
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
