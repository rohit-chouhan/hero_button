library hero_button;

import 'package:flutter/material.dart';

class HeroButton extends StatefulWidget {
  final String tag;
  final Widget child;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double elevation;
  final OutlinedBorder shape;
  final bool isLoading;
  final Widget? loadingIndicator;
  final Duration animationDuration;
  final Gradient? gradient;
  final BoxShadow? boxShadow;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;
  final bool useHero;

  const HeroButton({
    Key? key,
    required this.tag,
    required this.child,
    this.onPressed,
    this.backgroundColor = Colors.blue,
    this.elevation = 2.0,
    this.shape = const RoundedRectangleBorder(),
    this.isLoading = false,
    this.loadingIndicator,
    this.animationDuration = const Duration(milliseconds: 300),
    this.gradient,
    this.boxShadow,
    this.textStyle,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(16.0),
    this.useHero = true,
  }) : super(key: key);

  @override
  _HeroButtonState createState() => _HeroButtonState();
}

class _HeroButtonState extends State<HeroButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: widget.animationDuration);
    animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    if (widget.isLoading) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void didUpdateWidget(HeroButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isLoading != oldWidget.isLoading) {
      if (widget.isLoading) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      onPressed: widget.isLoading ? null : widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            widget.gradient == null ? widget.backgroundColor : null,
        elevation: widget.elevation,
        shape: widget.shape,
        padding: widget.padding,
        textStyle: widget.textStyle,
        shadowColor: widget.boxShadow?.color,
      ).copyWith(
        foregroundColor: WidgetStateProperty.all(widget.textStyle?.color),
        shape: WidgetStateProperty.all(widget.shape),
      ),
      child: widget.isLoading
          ? widget.loadingIndicator ?? CircularProgressIndicator()
          : widget.child,
    );

    return widget.useHero
        ? Hero(
            tag: widget.tag,
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  gradient: widget.gradient,
                  boxShadow:
                      widget.boxShadow != null ? [widget.boxShadow!] : [],
                ),
                child: button,
              ),
            ),
          )
        : Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              gradient: widget.gradient,
              boxShadow: widget.boxShadow != null ? [widget.boxShadow!] : [],
            ),
            child: button,
          );
  }
}
