import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/home2controller.dart';
import '../../../helper/color.dart';
import '../../keyholders.dart';
import '../m_header.dart';



class MInfo extends StatelessWidget {
  final HomeController2 controller = Get.put(HomeController2());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          mini: true,

          backgroundColor: ksecondaryColor.withOpacity(.5),
          shape: CircleBorder(),
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle),

            child: Center(child: Icon(Icons.arrow_upward_outlined,color: Colors.white,)),
          ),
          onPressed: () {
            controller.scrollTo(0, 0);
          }),
      backgroundColor: kbg2Color,
      endDrawer: SafeArea(bottom: false,
        child: Container(
          child: Drawer(
            width: size.width / 2.5,
            backgroundColor: kbg2Color,
            child: Container(
              height: size.height,
              color: kbg2Color,
              child: Obx(() => ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [ksecondaryColor, kbg2Color]),
                            color: kbg2Color,
                            shape: BoxShape.circle,
                          ),
                          width: 40,
                          height: 40,
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
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  buildDrawerListTile('HOME', 0, context, () {
                    if (Keyholders.headerKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.headerKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                      Navigator.pop(context);
                    }
                    controller.updateIndex(0);
                  }),
                  buildDrawerListTile('EXPERTISE', 1, context,() {
                    if (Keyholders.skillsKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.skillsKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                      Navigator.pop(context);
                    }
                    controller.updateIndex(1);
                  }),
                  buildDrawerListTile('PORTFOLIO', 2, context,() {
                    if (Keyholders.portfolioKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.portfolioKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                      Navigator.pop(context);
                    }
                    controller.updateIndex(2);
                  }),
                  buildDrawerListTile('EXPERIENCE', 3, context,() {
                    if (Keyholders.experienceKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.experienceKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                      Navigator.pop(context);
                    }
                    controller.updateIndex(3);
                  }),
                  buildDrawerListTile('RESUME', 4, context,() {
                    if (Keyholders.resumeKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.resumeKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                      Navigator.pop(context);
                    }
                    controller.updateIndex(4);
                  }),
                  buildDrawerListTile('CONTACT', 5,  context,() {
                    if (Keyholders.contactKey.currentContext != null) {
                      Scrollable.ensureVisible(
                        Keyholders.contactKey.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                      );
                      Navigator.pop(context);
                    }
                    controller.updateIndex(5);
                  }),
                ],
              )),
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SafeArea(bottom: false,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
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
                  padding: const EdgeInsets.only(left: 20, top: 5),
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
                          width: 40,
                          height: 40,
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
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  Builder(
                    builder: (context) {
                      return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.grey.shade200,
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 30),
                    MHeader(),




                    Container(
                      width: size.width,
                      height: 80,
                      child: Center(
                        child: Text(
                          "© 2024 All rights reserved ",
                          style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildDrawerListTile(
      String title, int index, context,Function()? onPressed) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style: GoogleFonts.montserrat(
            color: controller.selectedIndex.value == index
                ? ksecondaryColor
                : Colors.grey.shade200,
          ),
        ),

      ),
      onTap:  onPressed,
      // onTap: () {
      //   controller.scrollTo(offset, index);

      // },
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

  Widget _buildSectionTitle(String text, double fontSize) {
    return Text(
      text,
      style: GoogleFonts.catamaran(
        color: ksecondaryColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
