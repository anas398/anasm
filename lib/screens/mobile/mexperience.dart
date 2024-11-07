import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/color.dart';
import '../keyholders.dart';

class MExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: 980,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              key: Keyholders.experienceKey,
              "EXPERIENCE",
              style: GoogleFonts.montserrat(
                  color: Colors.grey.shade200,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xff333B50),
                    borderRadius: BorderRadius.circular(5)),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Jul 2024 - Oct 2024",
                              style: GoogleFonts.montserrat(
                                  color: ksecondaryColor),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(width:150,
                              child: Text(
                                "Exacore IT Solutions",
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey.shade200,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,),maxLines: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Flutter Developer",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/images/exacore.png",
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //2nd
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xff333B50),
                    borderRadius: BorderRadius.circular(5)),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Jan 2023 - May 2024",
                              style: GoogleFonts.montserrat(
                                  color: ksecondaryColor),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Beams IT Solutions",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Flutter Developer",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/images/beams.png",
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xff333B50),
                    borderRadius: BorderRadius.circular(5)),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Aug 2020 - Oct 2022",
                              style: GoogleFonts.montserrat(
                                  color: ksecondaryColor),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Accubits Technologies Pvt Ltd",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(width: 150,
                              child: Text(
                                "Flutter Developer",
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey.shade200,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                    maxLines: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/images/acc.png",
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ));
  }
}
