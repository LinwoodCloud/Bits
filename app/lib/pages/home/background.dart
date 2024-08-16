import 'package:flutter/material.dart';

class DotsBackground extends StatefulWidget {
  final double spacing, size, offset;
  const DotsBackground({
    super.key,
    this.spacing = 48.0,
    this.size = 2,
    this.offset = 0,
  });

  @override
  State<DotsBackground> createState() => _DotsBackgroundState();
}

class _DotsBackgroundState extends State<DotsBackground>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat(reverse: true);
  late final Tween<double> _valueTween = Tween(begin: 0.2, end: 0.7);
  @override
  void didUpdateWidget(covariant DotsBackground oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.spacing != widget.spacing ||
        oldWidget.size != widget.size ||
        oldWidget.offset != widget.offset) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => CustomPaint(
        painter: DotsPainter(
          spacing: widget.spacing,
          size: widget.size,
          offset: widget.offset,
          value: _valueTween.evaluate(_controller),
        ),
        child: const SizedBox.expand(),
      ),
    );
  }
}

class DotsPainter extends CustomPainter {
  final double spacing, size, offset, value;

  const DotsPainter(
      {this.spacing = 64.0, this.size = 8, this.offset = 0, this.value = 0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(value)
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    final realOffset = offset % spacing;

    for (var x = (size.width % spacing) / 2; x < size.width; x += spacing) {
      for (var y = (size.width % spacing) / 2;
          y < (size.height + realOffset);
          y += spacing) {
        canvas.drawCircle(Offset(x, y - realOffset), this.size, paint);
      }
    }
  }

  @override
  bool shouldRepaint(DotsPainter oldDelegate) =>
      spacing != oldDelegate.spacing ||
      size != oldDelegate.size ||
      offset != oldDelegate.offset ||
      value != oldDelegate.value;
}
