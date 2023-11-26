import 'package:flutter/material.dart';

class GradientBox extends StatefulWidget {
  GradientBox(
      {required this.containerWidth,
      required this.containerHeight,
      required this.duration,
      required this.imageName});

  late final double containerWidth;
  late final double containerHeight;
  late final int duration;
  late final String imageName;
  @override
  State<GradientBox> createState() => _GradientBoxState();
}

class _GradientBoxState extends State<GradientBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final value = _controller.value;
          return Transform.translate(
            offset: Offset(0, 2 * value),
            child: Container(
              width: MediaQuery.of(context).size.width * widget.containerWidth,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
              height:
                  MediaQuery.of(context).size.height * widget.containerHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  gradient:
                      LinearGradient(colors: [Colors.pinkAccent, Colors.blue]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.pinkAccent,
                        offset: Offset(-2, 0),
                        blurRadius: 20),
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(2, 0),
                        blurRadius: 20)
                  ]),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/${widget.imageName}.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            ),
          );
        });
  }
}
