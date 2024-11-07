import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anasm/screens/mobile/m_portfolio/mcustomcontainer.dart';

import '../../keyholders.dart';
import '../../webview/webview.dart';


class MPortfolio extends StatelessWidget {
 MPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Text(
          key: Keyholders.portfolioKey,
          "PORTFOLIO",
          style: GoogleFonts.montserrat(
              color: Colors.grey.shade200,
              fontSize:22,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "EXPLORE MY PROJECTS",
          style: GoogleFonts.montserrat(
              color: Colors.grey.shade200, fontSize:17),
        ),
        const SizedBox(
          height: 65,
        ),
        MCustomContainer(
          private: true,
          // play: () => Get.to(
          //   WebviewScreen(
          //       url: "https://play.google.com/store/apps/de"),
          // ),
          // apple: () => Get.to(
          //   WebviewScreen(
          //       url: "https://play.google.com/store/apps/d"),
          // ),

          heading: "Beams Cylinder",
          details: "Its cylinder distribution management system (ERP based application).meticulously crafted by Beams IT Solutions.",
          img: "assets/images/cyl.png",
        ),
        SizedBox(
          height : 50,
        ),
        MCustomContainer(
          // apple: () => Get.to(
          //   WebviewScreen(
          //       url: "https://apps/us/app/lead-finder-crm/id6449795529"),
          // ),
          // play: () => Get.to(
          //   WebviewScreen(
          //       url: "https://play/store/apps/details?id=leadfinder.crm.com&hl=en_IE"),
          // ),
          private: true,
          heading: "Wallop",
          details: "Implemented NFC reader functionality to enable seamless communication With external NFC-enable device",
          img: "assets/images/splash.jpeg",
        ),
        
        //portfolio 2
        const SizedBox(
          height: 50,
        ),
        MCustomContainer(
          play: () => Get.to(
             const WebviewScreen(
                url:
                    "https://play.google.com/store/apps/details?id=world.socialprotect.eshield"),
          ),
          apple: () => Get.to(
            const WebviewScreen(
                url:
                    "https:urity.agromaster.com/"),
          ),
          heading: "Social Protect",
          details:
              "Application for monitoring and filtering the offensive comments from the customers social media accounts ${"Twitter, Facebook, Instagram, YouTube"}, •	Removing offensive comments from the customers social media Post",
          img: "assets/images/sp.png",
        ),
              const SizedBox(
          height: 50,
        ),
        MCustomContainer(
          apple: () => Get.to(
           const WebviewScreen(
                url:
                    "/biowin-aeo/biowin.agromaster/"),
          ),
          play: () => Get.to(
        const WebviewScreen(
                url:
                    "-aeo/biowin.agromaster/"),
          ),
          heading: "Attention Block",
          details:
              "It’s NFT Marketplace Based Token Authenticator Application.Designed and developed an app which has functionality of adding token and business owners. The token is assigned to a user which is then verified by the user using token authenticator application",

          img: "assets/images/nft.png",
        ),
        

        //portfolio 4


      ],
    );
  }
}
