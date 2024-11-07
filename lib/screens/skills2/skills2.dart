import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/responsive.dart';
import '../../controller/home2controller.dart';
import '../../helper/color.dart';
import '../keyholders.dart';
import '../webview/webview.dart';


class Skills2 extends StatelessWidget {
 

  final HomeController2 homeController2 = Get.find<HomeController2>();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
       var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);
    return Container(
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
          SizedBox(
            height: tab?290:300,
          ),
          GestureDetector(
            onTap: () => Get.to(const WebviewScreen(
                url: "https://anasm-48501.web.app/assets/Anas_Flutter Developer.pdf")),
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
            key: Keyholders.skillsKey,
            "MY SKILLS & EXPERTISE",
            style: GoogleFonts.montserrat(
                color: Colors.grey.shade200, fontSize: 30),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
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
                padding: const EdgeInsets.symmetric(horizontal: 100),
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
                            homeController2.offsett.value >= 400.05 ? 90 : 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 100),
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
                padding: const EdgeInsets.symmetric(horizontal: 100),
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
                            homeController2.offsett.value >= 400.05 ? 89 : 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 100),
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
                padding: const EdgeInsets.symmetric(horizontal: 100),
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
                            homeController2.offsett.value >= 400.05 ? 82 : 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 100),
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
                padding: const EdgeInsets.symmetric(horizontal: 100),
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
                            homeController2.offsett.value >= 400.05 ? 86 : 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 100),
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
                padding: const EdgeInsets.symmetric(horizontal: 100),
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
                            homeController2.offsett.value >= 400.05 ? 88 : 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 100),
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
                padding: const EdgeInsets.symmetric(horizontal: 100),
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
                            homeController2.offsett.value >= 400.05 ? 68 : 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 100),
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
                padding: const EdgeInsets.symmetric(horizontal: 100),
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
                            homeController2.offsett.value >= 400.05 ? 35 : 0,
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