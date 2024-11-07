import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../helper/color.dart';




class MCustomContainer extends StatelessWidget {
  
  MCustomContainer({required this.details,required this.heading,required this.img,this.private ,this.apple, this.play});
  String details;
  String heading;
  bool? private;
  String img;
void Function()? play;
void Function()? apple;
  @override
  Widget build(BuildContext context) {
            Size size = MediaQuery.of(context).size;

    return  Container(margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xff333B50),
          borderRadius: BorderRadius.circular(2)),
      height: 500,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2)),
            width: size.width,
            height: size.height / 2.8,
            child: Center(
                child: Image(
              image: AssetImage(img),
              height:110
            )),
          ),
          Expanded(
              child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          heading,
                          style: GoogleFonts.montserrat(
                              color: kwhite,
                              fontSize:16,
                              fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          details,
                          style: GoogleFonts.montserrat(
                              color: Colors.grey.shade300,
                              fontSize:10),
                          maxLines: 10,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          SizedBox(height: 5,),
          Padding(
            padding:  EdgeInsets.only(right: 25),
            child: private==true?Container(
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
    ) :Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
             
                InkWell(onTap: play,child: Container(width:35,height:35,child: Image.asset("assets/images/play.png"))),
                SizedBox(width: 20,),
                    
                      InkWell(onTap: apple,child: Container(width:40 ,height:40,child: Image.asset("assets/images/apps.png"))),
              ],
            ),
          ),
                SizedBox(height: 20,),
    
        ],
      ),
    );
  }
}