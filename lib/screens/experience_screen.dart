import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Strings/experience_txt.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const AutoSizeText(
              'INTERNSHIP',
              style: TextStyle(
                  fontFamily: 'Horizon',
                  fontSize: 35.0,
                  color: Colors.white,
                  letterSpacing: 5.0),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            gradientInfoBox(0.30, 0.25, 'FUSEBYTES INC.,',
                'May 2023 - November 2023', '', 'App Development Intern')
          ],
        ),
      ),
    );
  }

  Widget gradientInfoBox(double containerHeight, double containerWidth,
      String expName, String tenure, String info, String role) {
    return Container(
      width: MediaQuery.of(context).size.width * containerWidth,
      height: MediaQuery.of(context).size.height * containerHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          gradient:
              const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]),
          boxShadow: const [
            BoxShadow(
                offset: Offset(-2, 0),
                blurRadius: 20.0,
                color: Colors.pinkAccent),
            BoxShadow(
                offset: Offset(2, 0), blurRadius: 20.0, color: Colors.blue),
          ]),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: const Color(0xff000c14),
            border: Border.all(color: Colors.white)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              expName,
              style: const TextStyle(
                  fontSize: 30.0, fontFamily: 'Lato', color: Colors.white),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            AutoSizeText(
              role,
              style: const TextStyle(
                  fontSize: 20.0, fontFamily: 'Lato', color: Colors.white),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            AutoSizeText(
              tenure,
              style: const TextStyle(
                  fontSize: 17.0, fontFamily: 'Lato', color: Colors.white),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const AutoSizeText(
              internshipInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Lato', fontSize: 15.0, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
