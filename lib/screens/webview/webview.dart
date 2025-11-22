// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



import '../../helper/color.dart';



class WebviewScreen extends StatefulWidget {
  final String url;

  const WebviewScreen({Key? key, required this.url,  }) : super(key: key);

  @override
  _WebviewScreenState createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  @override
  void initState() {
    super.initState();
    _launchUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbg2Color,
      body:  SafeArea(
        child: Center(
          child: CircularProgressIndicator(color: ksecondaryColor,), // Display a loading indicator while launching the URL
        ),
      ),
    );
  }

  _launchUrl() async {
    String url = widget.url;
    if (await canLaunch(url)) {
      await launch(url);
       _waitForUrlClose();
    } else {
      throw 'Could not launch $url';
    }
  }

   _waitForUrlClose() async {
    await Future.delayed(const Duration(seconds: 1)); // Wait for a short time
    Navigator.pop(context, true); // Pop the WebviewScreen and return to the previous screen
  }
}
