import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../helper/color.dart';
import 'm_info/m_info.dart';



class MHeaderStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  
    return SizedBox(
      child: Stack(
        children: [
          MInfo(),
          Positioned(
            top: 60.h,
            left:200,
            right:200,
            child: Container(
                width: 300,
                height:50.h,
                color: Color(0xff333B50),
                child: Column(
                  children: [
                    SizedBox(
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
                          "Professional Mobile App Developer with Over 4.5 years of experience, including 1.5 years of expertise in the UAE. Adept at building cross-platform mobile applications using Flutter and Dart, with a solid understanding of API integration, Firebase, and state management. Known for delivering high-quality, scalable solutions, and a strong focus on performance and user experience. Collaborative team player with a passion for innovation and continuous learning.",style: TextStyle(color: Colors.grey.shade200,fontSize: 13),),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
