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
                      play: () => Get.to(
                        const WebviewScreen(
                            url: "https://play.google.com/store/apps/details?id=com.alfnr.hub&hl=en"),
                      ),
                      apple: () => Get.to(
                        const WebviewScreen(
                            url: "https://apps.apple.com/au/app/alfnr-business-hub/id6467107273"),
                      ),
                      heading: "Alfnr Business Hub",
                      details: "AlFnr is an all-in-one business app for UAE small businesses, freelancers, and HR teams. It offers digital business cards, invoicing, attendance tracking, leave requests, and RFP management—all in one place. Users can create QR-enabled business cards, manage invoices and quotations, track staff hours, handle leave requests, list businesses for sale, post or respond to RFPs, and explore a UAE business directory to connect and grow.",
                      img: "assets/images/alfnr.png",

                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    CustomContainer(

                      apple: () => Get.to(
                        const WebviewScreen(
                            url: "https://apps.apple.com/au/app/stellar-chat/id6737412037"),
                      ),
                      play: () => Get.to(
                        const WebviewScreen(
                            url: "https://play.google.com/store/apps/details?id=com.sciwiztech.stellar_chat&hl=en"),
                      ),
                      heading: "Stellar Chat",
                      details: "StellarChat is an all-in-one social super app that combines real-time messaging, voice and video calls, short videos, live streaming, and peer-to-peer payments in one seamless platform. It allows users to chat instantly through 1-on-1 or group conversations, share media, and make high-quality voice and video calls. Users can create and explore short-form videos similar to TikTok.",
                      img: "assets/images/stellar.png",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
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
                      details: "Developed a cross-platform application designed to manage the complete distribution process of gas cylinders, covering key operations such as customer contract management, order processing, and logistics coordination. The app enables businesses to efficiently handle customer contracts, streamline order booking, and automate the generation of sales orders, reducing manual workload and improving accuracy.",
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
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    CustomContainer(
                      play: () => Get.to(
                        const WebviewScreen(
                            url: "https://play.google.com/store/apps/details?id=com.myg.travel_claim&hl=en"),
                      ),
                      apple: () => Get.to(
                        const WebviewScreen(
                            url: "https://apps.apple.com/au/app/"),
                      ),
                      heading: "MyClaim",
                      details: "The myClaim app is an internal tool designed for employees of myG, a prominent Indian appliance retailer, to manage travel expense claims with ease. With a user-friendly interface and organized workflow, myClaim enables employees to submit, track, and manage travel-related expenses, request advances, and access real-time claim statuses across multiple categories.",
                      img: "assets/images/claim.png",
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    CustomContainer(


                      private: true,
                      heading: "Price Checker",
                      details: "Easily check and compare product prices with our Price Checker app. Scan barcodes or search manually to get real-time pricing and save money. Simplify your shopping experience with accurate and quick results",
                      img: "assets/images/bar.png",
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
