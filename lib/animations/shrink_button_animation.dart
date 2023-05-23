import 'package:flutter/material.dart';

class ShrinkButton extends StatefulWidget {
  final Widget child;
  final double shrinkScale;
  final int animationDuration;
  const ShrinkButton({
    super.key,
    required this.child,
    this.shrinkScale = 0.95,
    this.animationDuration = 50,
  });

  @override
  State<ShrinkButton> createState() => _ShrinkButtonState();
}

class _ShrinkButtonState extends State<ShrinkButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.animationDuration),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animationController.forward();
        Future.delayed(const Duration(milliseconds: 200), () {
          _animationController.reverse();
        });
      },
      child: ScaleTransition(
        scale: Tween<double>(begin: 1.0, end: widget.shrinkScale)
            .animate(_animationController),
        child: widget.child,
      ),
    );
  }
}
