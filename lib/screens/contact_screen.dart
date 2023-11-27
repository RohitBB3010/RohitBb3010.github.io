import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        const AutoSizeText(
          'CONNECT',
          style: TextStyle(
              fontFamily: 'Horizon', color: Colors.white, fontSize: 30.0),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AutoSizeText(
                    'Let\'s Build Together',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Horizon',
                        color: Colors.white),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: const AutoSizeText(
                      'Wanna build together or just wanna say hi? Drop me an e-mail, my inbox is open for all !!',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20.0,
                          color: Color(0xffE59500)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/gmail.png'),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                      const AutoSizeText(
                        'rohitb.bhandwalkar@gmail.com',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 25.0,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Center(
                  child: AnimatedBuilder(
                      animation: _controller,
                      builder: ((context, child) {
                        final value = _controller.value;
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/kurta.jpg'),
                                  fit: BoxFit.cover),
                              gradient: LinearGradient(
                                  colors: [Colors.pink, Colors.blue]),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(-2, 0),
                                  color: Colors.pink,
                                  blurRadius: 15.0,
                                ),
                                BoxShadow(
                                  offset: Offset(2, 0),
                                  color: Colors.blue,
                                  blurRadius: 15.0,
                                ),
                              ]),
                        );
                      }))),
            ),
          ],
        ),
      ]),
    );
  }
}
