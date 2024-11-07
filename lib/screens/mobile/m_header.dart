import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/color.dart';
import '../keyholders.dart';
import 'm_portfolio/mportfolio.dart';
import 'mcontact.dart';
import 'meducation.dart';
import 'mexperience.dart';
import 'mskill.dart';


class MHeader extends StatelessWidget {
  const MHeader({super.key});

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child:Column(
        children: [
          Container(  key: Keyholders.headerKey,
                    decoration: BoxDecoration(
                      color: kbg2Color,
                      gradient:
                          LinearGradient(colors: [ksecondaryColor, kbg2Color]),
                      shape: BoxShape.circle,
                    ),
                    width: 200,
                    height:200,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kbg2Color,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/pic2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                   Text(
                  
                      "HI, I AM",
                      style: GoogleFonts.montserrat(
                          color: Colors.grey.shade100,
                          fontSize:18,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "ANAS MOOZHIKKAL",
                        style: GoogleFonts.dmSans(
                            color: kwhite,
                            fontSize:28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
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
                              fontSize:23,
                              fontWeight: FontWeight.bold,
                            ),
                            cursor: '',
                            speed: const Duration(milliseconds: 80),
                          ),
                          TypewriterAnimatedText(
                            "UI/UX Designer",
                            textStyle: GoogleFonts.catamaran(
                              color: ksecondaryColor,
                              fontSize:23,
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
                          fontSize:11,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 60,),
                     SizedBox(child: Mskill()),
                        SizedBox(height: 25),
                    MPortfolio(),
                      SizedBox(height: 15),
                    MExperience(),
                       SizedBox(height: 15),
                    MEducation(),
                         SizedBox(height: 15),
                    MContact2(),
        ],
      ) ,
    );
  }
}