import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/color.dart';
import '../keyholders.dart';

class Education2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              key: Keyholders.educationKey,
              "EDUCATION",
              style: GoogleFonts.montserrat(
                  color: Colors.grey.shade200,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 170),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: const Color(0xff333B50),
                    borderRadius: BorderRadius.circular(5)),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "2019-2020",
                              style: GoogleFonts.montserrat(
                                  color: ksecondaryColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: 300,
                              child: Text(
                                "Zoople Technology and Training",
                                style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 3,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Mobile App Developement",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/images/zoople.png",
                          height: 45,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),



            //2nd

            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 170),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: const Color(0xff333B50),
                    borderRadius: BorderRadius.circular(5)),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "2015 - 2019",
                                style: GoogleFonts.montserrat(
                                    color: ksecondaryColor),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "APJ Abdul Kalam Technological University",
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey.shade200,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "Bachelor of Technology in Computer Science & Engineering",
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey.shade200,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                      ),
                      //const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/images/ktu.png",
                          height: 55,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 170),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: const Color(0xff333B50),
                    borderRadius: BorderRadius.circular(5)),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "2013 - 2015",
                              style: GoogleFonts.montserrat(
                                  color: ksecondaryColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Higher Secondary Govt VHSS Pullanoor",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Plus Two",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/images/sc.png",
                          height: 55,
                        ),
                      ),
                      const SizedBox(
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
