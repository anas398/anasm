import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:animate_do/animate_do.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../components/responsive.dart';
import '../../helper/color.dart';
import '../keyholders.dart';
import '../skills2/skills2.dart';


class Info extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);

    return Container(
      width: size.width,
      child: Column(

        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:tab?70: 100),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      key:   Keyholders.headerKey,
                      "HI, I AM",
                      style: GoogleFonts.montserrat(
                          color: Colors.grey.shade100,
                          fontSize:tab?18: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "ANAS MOOZHIKKAL",
                      style: GoogleFonts.dmSans(
                          color: kwhite,
                          fontSize:tab?32: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SlideInRight(
                      from: size.width,
                      duration: Duration(seconds: 1),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "Flutter Developer",
                            textStyle: GoogleFonts.catamaran(
                              color: ksecondaryColor,
                              fontSize:tab?28: 36,
                              fontWeight: FontWeight.bold,
                            ),
                            cursor: '',
                            speed: const Duration(milliseconds: 80),
                          ),
                          TypewriterAnimatedText(
                            "UI/UX Designer",
                            textStyle: GoogleFonts.catamaran(
                              color: ksecondaryColor,
                              fontSize:tab?28: 36,
                              fontWeight: FontWeight.bold,
                            ),
                            cursor: '',
                            speed: const Duration(milliseconds: 80),
                          ),
                          TypewriterAnimatedText(
                            "MERN Stack Developer",
                            textStyle: GoogleFonts.catamaran(
                              color: ksecondaryColor,
                              fontSize:tab?28: 36,
                              fontWeight: FontWeight.bold,
                            ),
                            cursor: '',
                            speed: const Duration(milliseconds: 80),
                          ),
                        ],
                        totalRepeatCount: 100,
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                    ),
                    Text(
                      "Android | IOS | WEB",
                      style: GoogleFonts.montserrat(
                          color: Colors.grey.shade400,
                          fontSize:tab?10: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kbg2Color,
                      gradient:
                          LinearGradient(colors: [ksecondaryColor, kbg2Color]),
                      shape: BoxShape.circle,
                    ),
                    width: tab?260:300,
                    height:tab?260: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kbg2Color,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/pic2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 155,
          ),
          SizedBox(child: Skills2()),
          SizedBox(
            height: 85,
          ),
        ],
      ),
    );
  }
}
