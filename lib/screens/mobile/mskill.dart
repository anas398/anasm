import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import '../../controller/home2controller.dart';
import '../../helper/color.dart';
import '../keyholders.dart';
import '../webview/webview.dart';


class Mskill extends StatelessWidget {

  final HomeController2 homeController2 = Get.find<HomeController2>();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
     

    return Container(
      key: Keyholders.skillsKey,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/skillpng.png"),
          fit: BoxFit.cover,
        ),
      ),
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(key: Keyholders.resumeKey,
            height: 70
          ),
          GestureDetector(
            onTap: () => Get.to(const WebviewScreen(
                url:"https://anasm-48501.web.app/assets/Anas_Flutter_Developer.pdf")),
            child: Container(  
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: ksecondaryColor),
                borderRadius: BorderRadius.circular(2),
              ),
              child: const Center(
                child: Text(
                
                  "Download Cv",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 75,
          ),
          Text(
            "MY SKILLS & EXPERTISE",
            style: GoogleFonts.montserrat(
                color: Colors.grey.shade200, fontSize: 22),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Flutter",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: FAProgressBar(
                        progressColor: ksecondaryColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(0),
                        size: 15,
                        displayTextStyle:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        currentValue:
                            homeController2.offsett.value >= 100.05 ? 95 : 0,
                        displayText: '%',
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Getx",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: FAProgressBar(
                        progressColor: ksecondaryColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(0),
                        size: 15,
                        displayTextStyle:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        currentValue:
                            homeController2.offsett.value >= 100.05 ? 92 : 0,
                        displayText: '%',
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Http & Dio",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: FAProgressBar(
                    progressColor: ksecondaryColor.withOpacity(.6),
                    borderRadius: BorderRadius.circular(0),
                    size: 15,
                    displayTextStyle:
                    const TextStyle(fontSize: 10, color: Colors.white),
                    currentValue:
                    homeController2.offsett.value >= 100.05 ? 90 : 0,
                    displayText: '%',
                  ),
                ),
              ],
            ),
          )),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Provider",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: FAProgressBar(
                        progressColor: ksecondaryColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(0),
                        size: 15,
                        displayTextStyle:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        currentValue:
                            homeController2.offsett.value >= 100.05 ? 87 : 0,
                        displayText: '%',
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Firebase",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: FAProgressBar(
                        progressColor: ksecondaryColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(0),
                        size: 15,
                        displayTextStyle:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        currentValue:
                            homeController2.offsett.value >= 100.05 ? 89 : 0,
                        displayText: '%',
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Hive",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: FAProgressBar(
                        progressColor: ksecondaryColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(0),
                        size: 15,
                        displayTextStyle:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        currentValue:
                            homeController2.offsett.value >= 100.05 ? 85 : 0,
                        displayText: '%',
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Figma",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: FAProgressBar(
                        progressColor: ksecondaryColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(0),
                        size: 15,
                        displayTextStyle:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        currentValue:
                            homeController2.offsett.value >= 100.05 ? 65 : 0,
                        displayText: '%',
                      ),
                    ),
                  ],
                ),
              )),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Adobe XD",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: FAProgressBar(
                    progressColor: ksecondaryColor.withOpacity(.6),
                    borderRadius: BorderRadius.circular(0),
                    size: 15,
                    displayTextStyle:
                    const TextStyle(fontSize: 10, color: Colors.white),
                    currentValue:
                    homeController2.offsett.value >= 100.05 ? 77 : 0,
                    displayText: '%',
                  ),
                ),
              ],
            ),
          )),


          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Bloc",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: FAProgressBar(
                        progressColor: ksecondaryColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(0),
                        size: 15,
                        displayTextStyle:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        currentValue:
                            homeController2.offsett.value >= 100.05 ? 75 : 0,
                        displayText: '%',
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "MERN Stack",
                  style: GoogleFonts.montserrat(color: Colors.grey.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: FAProgressBar(
                    progressColor: ksecondaryColor.withOpacity(.6),
                    borderRadius: BorderRadius.circular(0),
                    size: 15,
                    displayTextStyle:
                    const TextStyle(fontSize: 10, color: Colors.white),
                    currentValue:
                    homeController2.offsett.value >= 100.05 ? 59 : 0,
                    displayText: '%',
                  ),
                ),
              ],
            ),
          )),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
