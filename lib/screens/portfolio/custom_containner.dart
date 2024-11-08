import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anasm/components/responsive.dart';

import '../../helper/color.dart';

class CustomContainer extends StatelessWidget {
  final String details;
  final String heading;
  final bool? private;
  final String img;
  final VoidCallback? play;
  final VoidCallback? apple;

  CustomContainer({
    required this.details,
    required this.heading,
    required this.img,
     this.play,
     this.apple,
    this.private,
  });

  @override
  Widget build(BuildContext context) {
    var tab = Responsive.isTablet(context);
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff333B50),
          borderRadius: BorderRadius.circular(2),
        ),
        height: 500,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
              width: size.width,
              height: size.height / 2.8,
              child: Center(
                child: Image(
                  image: AssetImage(img),
                  height: tab ? 110 : 150,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              heading,
                              style: GoogleFonts.montserrat(
                                color: kwhite,
                                fontSize: tab ? 16 : 25,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              details,
                              style: GoogleFonts.montserrat(
                                color: Colors.grey.shade300,
                                fontSize: tab ? 10 : 14,
                              ),
                              maxLines: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding:  EdgeInsets.only(right: 25),
              child:private==true?Container(
                width: 100,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: ksecondaryColor),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Center(
                  child: Text(

                    "Private",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ): Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: play,
                    child: Container(
                      width: tab ? 35 : 45,
                      height: tab ? 35 : 45,
                      child: Image.asset("assets/images/play.png"),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: apple,
                    child: Container(
                      width: tab ? 40 : 50,
                      height: tab ? 40 : 50,
                      child: Image.asset("assets/images/apps.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
