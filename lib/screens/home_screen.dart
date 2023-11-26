import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.10,
          vertical: MediaQuery.of(context).size.height * 0.10),
      //decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const AutoSizeText(
                  'HELLO !!!',
                  style: TextStyle(
                      fontFamily: 'Horizon',
                      color: Colors.white,
                      fontSize: 30.0),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const AutoSizeText(
                  'I AM ROHIT BHANDWALKAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38.0,
                      fontFamily: 'Horizon'),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const AutoSizeText(
                  'Web Developer',
                  style: TextStyle(
                      color: Color(0xffE59500),
                      fontSize: 20.0,
                      fontFamily: 'Horizon'),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const AutoSizeText(
                  'Flutter Developer',
                  style: TextStyle(
                      color: Color(0xffE59500),
                      fontSize: 20.0,
                      fontFamily: 'Horizon'),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const AutoSizeText(
                  'Creative Writer',
                  style: TextStyle(
                      color: Color(0xffE59500),
                      fontSize: 20.0,
                      fontFamily: 'Horizon'),
                )
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final value = _controller.value;
                return Transform.translate(
                  offset: Offset(0, 10 * value),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.4,
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.01),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        gradient:
                            LinearGradient(colors: [Colors.pink, Colors.blue]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.pink,
                              blurRadius: 20,
                              offset: Offset(-2, 0)),
                          BoxShadow(
                              color: Colors.blue,
                              blurRadius: 20,
                              offset: Offset(2, 0))
                        ]),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Mic.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
