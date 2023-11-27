import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Strings/experience_txt.dart';
import 'package:portfolio/components/epxerience_class.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    print(memberships[2].tenure);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      height: MediaQuery.of(context).size.height * 0.72,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RawScrollbar(
        thumbColor: Colors.amber,
        radius: const Radius.circular(20.0),
        trackVisibility: true,
        trackColor: Colors.red,
        child: SingleChildScrollView(
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
              gradientInfoBox(
                  0.30,
                  0.25,
                  'FUSEBYTES INC.,',
                  'May 2023 - November 2023',
                  internshipInfo,
                  'App Development Intern'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              const AutoSizeText(
                'MEMBERSHIPS & AFFILIATIONS',
                style: TextStyle(
                    fontFamily: 'Horizon', fontSize: 35.0, color: Colors.white),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Wrap(
                runSpacing: MediaQuery.of(context).size.height * 0.05,
                spacing: MediaQuery.of(context).size.width * 0.05,
                children: memberships.map((e) {
                  return gradientInfoBox(
                      0.3, 0.25, e.org, e.tenure, e.info, e.position);
                }).toList(),
              )
            ],
          ),
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
                blurRadius: 20,
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
            AutoSizeText(
              info,
              maxLines: 6,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Lato', fontSize: 13.0, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget gradientCommitteBox(Experience committe) {
    return Container();
  }
}
