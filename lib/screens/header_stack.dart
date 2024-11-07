import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anasm/screens/contact/contact.dart';
import 'package:anasm/screens/education/education.dart';
import 'package:anasm/screens/portfolio/portfolio.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../components/responsive.dart';

import '../helper/color.dart';

import 'experience/experience2.dart';
import 'info/info.dart';

class HeaderStack extends StatelessWidget {



  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;
    var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);
    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: [
              Info(


              ),
              Positioned(
                top: 60.h,
                left: tab ? 200 : 300,
                right: tab ? 200 : 300,
                child: Container(
                    width: 300,
                    height: tab ? 50.h : 40.h,
                    color: Color(0xff333B50),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        Text(
                          "AM",
                          style: GoogleFonts.montserrat(
                              color: ksecondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 35),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Professional Mobile App Developer with Over 4.5 years of experience, including 1.5 years of expertise in the UAE. Adept at building cross-platform mobile applications using Flutter and Dart, with a solid understanding of API integration, Firebase, and state management. Known for delivering high-quality, scalable solutions, and a strong focus on performance and user experience. Collaborative team player with a passion for innovation and continuous learning.",
                            style: TextStyle(
                                color: Colors.grey.shade200, fontSize: 13),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
          Portfolio(),
          SizedBox(height: 75,),
          Experience2(),
          SizedBox(height: 20),
          Education2(),
          SizedBox(height: 20),
          Contact2(),

        ],
      ),

    );
  }
}
