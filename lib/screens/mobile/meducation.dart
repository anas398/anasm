import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/color.dart';
import '../keyholders.dart';

class MEducation extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,

        height: 850,
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(   color: const Color(0xff333B50),borderRadius: BorderRadius.circular(5)),
                height: 200,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                   //   const SizedBox(height: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "2019 - 2020",
                              style: GoogleFonts.montserrat(color: ksecondaryColor),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SizedBox(width: 150,
                              child: Text(
                                "Zoople Technology and Training",
                                style: GoogleFonts.montserrat(color: Colors.grey.shade200,fontSize:15,fontWeight:FontWeight.w300),
                                maxLines: 2,   ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Mobile Application Development",
                              style: GoogleFonts.montserrat(color: Colors.grey.shade200,fontSize:12,fontWeight:FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                      // const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25,right: 5),
                        child: Image.asset("assets/images/zoople.png", height: 50,width: 90,),
                      ),
                  //    const SizedBox(width: 15,),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(   color: const Color(0xff333B50),borderRadius: BorderRadius.circular(5)),
                height: 200,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      const SizedBox(height: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "2015 - 2019",
                              style: GoogleFonts.montserrat(color: ksecondaryColor),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SizedBox(width: 150,
                              child: Text(
                                "APJ Abdul Kalam Technological University",
                                style: GoogleFonts.montserrat(color: Colors.grey.shade200,fontSize:15,fontWeight:FontWeight.w300),
                                maxLines: 2,   ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Bachelor of Technology in\nComputer Science & Engineering",
                              style: GoogleFonts.montserrat(color: Colors.grey.shade200,fontSize:12,fontWeight:FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset("assets/images/ktu.png", height: 50,),
                      ),
                      const SizedBox(width: 5,),
                    ],
                  ),
                ),
              ),
            ),
             const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(   color: const Color(0xff333B50),borderRadius: BorderRadius.circular(5)),
                height: 200,
             
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      const SizedBox(height: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "2013 - 2015",
                              style: GoogleFonts.montserrat(color: ksecondaryColor),
                            ),
                          ),
                          const SizedBox(height: 20,),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 15),
                             child: SizedBox(width: 150,
                               child: Text(
                                "Higher Secondary Govt VHSS Pullanoor",
                                style: GoogleFonts.montserrat(color: Colors.grey.shade200,fontSize:15,fontWeight:FontWeight.w300),
                                                  maxLines: 2,   ),
                             ),
                           ),
                            const SizedBox(height: 10,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15),
                               child: Text(
                                                       "Plus Two",
                                                       style: GoogleFonts.montserrat(color: Colors.grey.shade200,fontSize:12,fontWeight:FontWeight.w300),
                                                     ),
                             )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset("assets/images/sc.png", height: 50,),
                      ),
                      const SizedBox(width: 5,),
                    ],
                  ),
                ),
              ),
            ),
             
          ],
        ));
  }
}
