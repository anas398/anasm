import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anasm/screens/header_stack.dart';
import 'package:anasm/screens/keyholders.dart';

import '../../components/responsive.dart';
import '../controller/home2controller.dart';
import '../helper/color.dart';
import 'contact/contact.dart';
import 'mobile/m_info/m_info.dart';

class Home2 extends StatelessWidget {
  final HomeController2 controller = Get.put(HomeController2());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var mobile = Responsive.isMobile(context);
    print("Mediaquery :${size.width}");
    print("Mediamobile>>>> >> query :${mobile}");

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30,bottom: 30),
        child:size.width <= 852? const SizedBox(): FloatingActionButton(
            mini: true,
            backgroundColor: ksecondaryColor.withOpacity(.5),
            shape: const CircleBorder(),
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),

              child: const Center(child: Icon(Icons.arrow_upward_outlined,color: Colors.white,)),
            ),
            onPressed: () {
              controller.scrollTo(0, 0);
            }),
      ),
      backgroundColor: kbg2Color,
      body: mobile
          ? MInfo()
          : SizedBox(
        width: size.width,
        height: size.height,
        child: SafeArea(
          bottom: false,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            controller: controller.scrollController,
            slivers: [
              SliverAppBar(
                toolbarHeight: 80,
                backgroundColor: kbg2Color,
                pinned: false,
                floating: true,
                snap: true,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                expandedHeight: 80,
                leadingWidth: 200,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 5),
                  child: Container(

                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [ksecondaryColor, kbg2Color]),
                            color: kbg2Color,
                            shape: BoxShape.circle,
                          ),
                          width: 50,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              color: kbg2Color,
                              child: Center(
                                  child: Text(
                                    "AM",
                                    style: GoogleFonts.montserrat(
                                        color: ksecondaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  _buildAppBarButton("HOME", 0, () {
                    if (Keyholders.headerKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.headerKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                    }
                    controller.updateIndex(0);
                  }),
                  _buildAppBarButton("EXPERTISE", 1, () {
                    if (Keyholders.skillsKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.skillsKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                    }
                    controller.updateIndex(1);
                  }),
                  _buildAppBarButton("PORTFOLIO", 2, () {
                    if (Keyholders.portfolioKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.portfolioKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                    }
                    controller.updateIndex(2);
                  }),
                  _buildAppBarButton("EXPERIENCE", 3, () {
                    if (Keyholders.experienceKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.experienceKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                    }
                    controller.updateIndex(3);
                  }),
                  _buildAppBarButton("EDUCATION", 4, () {
                    if (Keyholders.educationKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.educationKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                    }
                    controller.updateIndex(4);
                  }),
                  _buildAppBarButton("CONTACT", 5, () {
                    if (Keyholders.contactKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.contactKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                    }
                    controller.updateIndex(5);
                  }),
                  const SizedBox(width: 30),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(height: 100),
                    HeaderStack(),
                    const SizedBox(),




                    SizedBox(

                      width: size.width,
                      height: 80,
                      child: Center(
                          child: Text(
                            "© 2025 - anas moozhikkal - All rights reserved",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8)),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBarButton(String text, int index, Function()? onPressed) {
    return Obx(() => TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.catamaran(
          color: controller.selectedIndex.value == index
              ? ksecondaryColor
              : kwhite,
          fontWeight: FontWeight.w600,
        ),
      ),
    ));
  }
}
