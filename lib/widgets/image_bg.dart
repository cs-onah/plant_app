import 'dart:math';

import 'package:flutter/material.dart';

class ImageBg extends StatelessWidget {
  final bool ltr;
  const ImageBg({Key? key, this.ltr = true}) : super(key: key);

  static const width = 177.0;
  @override
  Widget build(BuildContext context) {
    if (!ltr) {
      return Transform(
        transform: Matrix4.identity()..translate(width)..rotateY(pi),
        child: CustomPaint(
          size: Size(width, 136),
          painter: _BgPaint(),
        ),
      );
    }
    return CustomPaint(
      size: Size(177, 136),
      painter: _BgPaint(),
    );
  }
}

class _BgPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(8.00043, 21);
    path.cubicTo(23.7315, -7.4573, 99.814, -2.08757, 176.5, 14.4999);
    path.lineTo(176.5, 117);
    path.cubicTo(109.335, 141.714, 30.5012, 142.5, 18.0006, 111.5);
    path.cubicTo(5.50009, 80.5, -7.73066, 49.4573, 8.00043, 21);
    path.close();

    Paint fill = Paint()..style = PaintingStyle.fill;
    fill.color = Color(0xffFDF2F0);
    canvas.drawPath(path, fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
