import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
  const SharedButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.buttonColor,
    this.buttonSize,
  });

  final Widget text;
  final Size? buttonSize;

  final Color buttonColor;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: const WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          fixedSize: WidgetStatePropertyAll(
            buttonSize ?? const Size(300, 60),
          ),
          backgroundColor: WidgetStatePropertyAll(buttonColor),
        ),
        child: text);
  }
}
