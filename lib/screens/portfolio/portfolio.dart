import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/responsive.dart';
import '../keyholders.dart';
import '../webview/webview.dart';
import 'custom_containner.dart';

class Portfolio extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);

    return Container(
    key: Keyholders.portfolioKey,
      width: size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            "PORTFOLIO",
            style: GoogleFonts.montserrat(
                color: Colors.grey.shade200,
                fontSize: tab ? 25 : 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "EXPLORE MY PROJECTS",
            style: GoogleFonts.montserrat(
                color: Colors.grey.shade200, fontSize: tab ? 18 : 20),
          ),
          const SizedBox(
            height: 65,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: tab ? 90 : 170),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomContainer(
                      // play: () => Get.to(
                      //   WebviewScreen(
                      //       url: "https://play.google.com/store/apps/de"),
                      // ),
                      // apple: () => Get.to(
                      //   WebviewScreen(
                      //       url: "https://play.google.com/store/apps/d"),
                      // ),
                      private: true,
                      heading: "Beams Cylinder",
                      details: "Its cylinder distribution management system (ERP based application).meticulously crafted by Beams IT Solutions.",
                      img: "assets/images/cyl.png",
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    CustomContainer(
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
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    CustomContainer(
                      play: () => Get.to(
                        const WebviewScreen(
                            url: "https://play.google.com/store/apps/details?id=world.socialprotect.eshield"),
                      ),
                      apple: () => Get.to(
                        const WebviewScreen(
                            url: "https://apps.apple.com/au/app/socialprotect/id1615521416"),
                      ),
                      heading: "Social Protect",
                      details: "Application for monitoring and filtering the offensive comments from the customers social media accounts ${"Twitter, Facebook, Instagram, YouTube"}, •	Removing offensive comments from the customers social media Post",
                      img: "assets/images/sp.png",
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    CustomContainer(
                      apple: () => Get.to(
                        const WebviewScreen(
                            url: "https://apps.apple.com/au/app/tokenbritesi/id1763521416"),
                      ),
                      play: () => Get.to(
                        const WebviewScreen(
                            url: "https://play.google.com/store/apps/details?id=com.accubits.attention_block_business"),
                      ),
                      heading: "Attention Block",
                      details: "It’s NFT Marketplace Based Token Authenticator Application.The app which has functionality of adding token and business owners. The token is assigned to a user which is then verified by the user using token authenticator application",
                      img: "assets/images/nft.png",
                    ),
                  ],
                ),

              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
