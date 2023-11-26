import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  Map<String, String> skills = {
    'Flutter': 'flutter',
    'Dart': 'dart',
    'Firebase': 'firebase',
    'JavaScript': 'javascript',
    'HTML': 'html',
    'CSS': 'css',
    'Java': 'java',
    'C - Language': 'c',
    'Canva': 'canva',
    'Figma': 'figma',
    'Git': 'git',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Center(
        child: Wrap(
            alignment: WrapAlignment.center,
            spacing: MediaQuery.of(context).size.width * 0.05,
            runSpacing: MediaQuery.of(context).size.width * 0.02,
            children: skills.entries.map((entry) {
              String skillName = entry.key;
              String imageName = entry.value;

              return Container(
                padding: const EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                          image: AssetImage('assets/skills/${imageName}.png')),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      AutoSizeText(
                        skillName,
                        style: const TextStyle(
                            fontSize: 18.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              );
            }).toList()),
      ),
    );
  }
}
