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
          private: false,
          play: () => Get.to(
            WebviewScreen(
                url: "https://play.google.com/store/apps/details?id=com.alfnr.hub&hl=en"),
          ),
          apple: () => Get.to(
            WebviewScreen(
                url: "https://apps.apple.com/au/app/alfnr-business-hub/id6467107273"),
          ),

          heading: "Alfnr Business Hub",
          details: "AlFnr is an all-in-one business app for UAE small businesses, freelancers, and HR teams. It offers digital business cards, invoicing, attendance tracking, leave requests, and RFP management—all in one place. Users can create QR-enabled business cards, manage invoices and quotations, track staff hours, handle leave requests, list businesses for sale, post or respond to RFPs, and explore a UAE business directory to connect and grow.",
          img: "assets/images/alfnr.png",
        ),
        const SizedBox(
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
          private: false,
          heading: "Stellar Chat",
          details: "StellarChat is an all-in-one social super app that combines real-time messaging, voice and video calls, short videos, live streaming, and peer-to-peer payments in one seamless platform. It allows users to chat instantly through 1-on-1 or group conversations, share media, and make high-quality voice and video calls. Users can create and explore short-form videos similar to TikTok.",
          img: "assets/images/stellar.png",

        ),

        const SizedBox(
          height: 50,
        ),

        //-----
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
          details: "Developed a cross-platform application designed to manage the complete distribution process of gas cylinders, covering key operations such as customer contract management, order processing, and logistics coordination. The app enables businesses to efficiently handle customer contracts, streamline order booking, and automate the generation of sales orders, reducing manual workload and improving accuracy.",
          img: "assets/images/cyl.png",
        ),
        const SizedBox(
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
                    "https://apps.apple.com/au/app/socialprotect/id1615521416"),
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
                    "https://apps.apple.com/au/app/"),
          ),
          play: () => Get.to(
        const WebviewScreen(
                url:
                    "https://play.google.com/store/apps/details?id=com.myg.travel_claim&hl=en"),
          ),
          heading: "MyClaim",
          details:
              "The myClaim app is an internal tool designed for employees of myG, a prominent Indian appliance retailer, to manage travel expense claims with ease. With a user-friendly interface and organized workflow, myClaim enables employees to submit, track, and manage travel-related expenses, request advances, and access real-time claim statuses across multiple categories.",
          img: "assets/images/claim.png",
        ),
        const SizedBox(
          height: 50,
        ),
        MCustomContainer(
          private: true,

          heading: "Price Checker",
          details:
          "Easily check and compare product prices with our Price Checker app. Scan barcodes or search manually to get real-time pricing and save money. Simplify your shopping experience with accurate and quick results",

          img: "assets/images/bar.png",
        ),

        //portfolio 4


      ],
    );
  }
}
