import 'package:flutter/material.dart';

class HeroButton extends StatefulWidget {
  final String? label;
  final bool? fullWidth;
  final double? height;
  final Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? textColor;
  final Color? backColor;
  final bool? borderRound;
  final double? textSize;
  final IconData? preIcon;
  final IconData? postIcon;
  HeroButton({
    this.fullWidth,
    this.label,
    @required this.onPressed,
    this.padding,
    this.textColor,
    this.backColor,
    this.borderRound,
    this.height,
    this.textSize,
    this.preIcon,
    this.postIcon,
  });

  @override
  _HeroButtonState createState() => _HeroButtonState();
}

class _HeroButtonState extends State<HeroButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: SizedBox(
          width: widget.fullWidth == true ? double.infinity : null,
          height: widget.height,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: widget.borderRound == true ? StadiumBorder() : null,
                primary: widget.backColor, // background
                onPrimary: widget.textColor, // foreground
              ),
              onPressed: widget.onPressed,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                          widget.preIcon != null ? widget.preIcon : null,
                          size: widget.preIcon != null
                              ? widget.textSize! + 5
                              : 0),
                    ),
                    TextSpan(
                      text: widget.label,
                      style: TextStyle(fontSize: widget.textSize),
                    ),
                    WidgetSpan(
                      child: Icon(
                          widget.postIcon != null ? widget.postIcon : null,
                          size: widget.postIcon != null
                              ? widget.textSize! + 5
                              : 0),
                    ),
                  ],
                ),
              ))),
    );
  }
}
