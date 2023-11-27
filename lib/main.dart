import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact_screen.dart';
import 'package:portfolio/screens/experience_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/journal_screen.dart';
import 'package:portfolio/screens/skills_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff000c14),
      ),
      home: const MyHomePage(title: 'Flutter App Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tabEntry = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02,
            vertical: MediaQuery.of(context).size.height * 0.02),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.12,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const Image(image: AssetImage('assets/R.png')),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 1;
                              });
                            },
                            child: const AutoSizeText(
                              'Home',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 2;
                              });
                            },
                            child: const AutoSizeText(
                              'Experience',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 3;
                              });
                            },
                            child: const AutoSizeText(
                              'Skills',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 4;
                              });
                            },
                            child: const AutoSizeText(
                              'Journal',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 5;
                              });
                            },
                            child: const AutoSizeText(
                              'Contact',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ]),
          ),
          if (tabEntry == 0 || tabEntry == 1) const HomeScreen(),
          if (tabEntry == 2) const ExperienceScreen(),
          if (tabEntry == 3) const SkillsScreen(),
          if (tabEntry == 4) const JournalScreen(),
          if (tabEntry == 5) const ContactScreen(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://www.linkedin.com/in/rohit-bhandwalkar-b2708a235/'));
                    },
                    child: Image.asset('assets/linkedin.png'),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      launchUrl(Uri.parse('https://github.com/RohitBB3010'));
                    },
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      launchUrl(
                          Uri.parse('https://twitter.com/RohitBhandwalk8'));
                    },
                    child: Image.asset('assets/twitter.png'),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
