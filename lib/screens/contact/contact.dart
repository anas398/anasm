import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../../../components/responsive.dart';
import '../../helper/color.dart';
import '../keyholders.dart';
import '../webview/webview.dart';

class Contact2 extends StatelessWidget {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final msgController = TextEditingController();
  final subjectController = TextEditingController();

  sendEmail() async {
    try {
      final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
      final response = await http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            "service_id": "service_5wflphj",
            "template_id": "template_iifu9qe",
            "user_id": "eoC2hL_1KsU31Au9r",
            "template_params": {
              'name': nameController.text,
              "message": msgController.text,
              "user_email": emailController.text,
              "subject":subjectController.text,
              "phone":phoneController.text
            }
          }));
      print(response.body);
      if (response.statusCode == 200 && emailController.text.isEmpty || nameController.text.isEmpty || msgController.text.isEmpty) {
   
      }
      else if(response.statusCode ==200){
             Get.snackbar("Thank you for connecting", "", colorText: Colors.white);
      }else{
        return null;
      }

      print("status code :${response.statusCode}");

      return response.statusCode;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
           var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);
    return Container(

      width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/ct.png",
              ),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Container(
            key: Keyholders.contactKey,
            margin: EdgeInsets.symmetric(horizontal: tab?90:170, vertical: 70),
            width: size.width,
            height: size.height,
            color: const Color(0xff333B50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50),
                            child: Text(
                              key: key,
                              "CONTACT ME",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade200, fontSize:tab?22: 30),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50),
                            child: Text(
                              "Let's discuss your project and bring your ideas to life. Reach out to me via email or phone to start the conversation.",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade300, fontSize:tab?16: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                        hintText: "Name",
                                        hintStyle: GoogleFonts.montserrat(
                                            color: Colors.grey.shade500),
                                        fillColor: Colors.white,
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        hintStyle: GoogleFonts.montserrat(
                                            color: Colors.grey.shade500),
                                        hintText: "Email",
                                        fillColor: Colors.white,
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  hintText: "Phone",
                                  fillColor: Colors.white,
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey.shade500),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              child: TextFormField(
                                controller: subjectController,
                                decoration: InputDecoration(
                                    hintText: "Subject",
                                    hintStyle: GoogleFonts.montserrat(
                                        color: Colors.grey.shade500),
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(5)),
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(0),
                                    )),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: TextFormField(
                              controller: msgController,
                              maxLines: 5,
                              decoration: InputDecoration(
                                  hintText: "Message",
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey.shade500),
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: InkWell(
                              onTap: () {
                                sendEmail();
                              },
                              child: Container(
                                width: size.width,
                                height: 45,
                                decoration:
                                    BoxDecoration(color: ksecondaryColor),
                                child: Center(
                                    child: Text(
                                  "SEND MESSAGE",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                )),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("THANK YOU FOR CONNECTING",
                              style: GoogleFonts.montserrat(
                                color: ksecondaryColor,
                                fontSize: 13,
                              )),
                        ],
                      ),
                    )),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Get.to(const WebviewScreen(
                          url:
                              "https://api.whatsapp.com/send/?phone=919562015163&text&type=phone_number&app_absent=0")),
                      child: Container(
                        width: 35,
                        height: 35,
                        child: Image.asset(
                          "assets/images/wt.png",
                          height: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => Get.to(const WebviewScreen(
                          url:
                              "https://www.instagram.com/anz_mzkl/")),
                      child: Container(
                        width: 35,
                        height: 35,
                        child: Image.asset(
                          "assets/images/in.png",
                          height: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => Get.to(const WebviewScreen(
                          url:
                              "https://www.linkedin.com/in/anasmzk/")),
                      child: Container(
                        width: 35,
                        height: 35,
                        child: Image.asset(
                          "assets/images/link.png",
                          height: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => Get.to(const WebviewScreen(
                          url: "https://github.com/anas398")),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/images/git.png",
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
