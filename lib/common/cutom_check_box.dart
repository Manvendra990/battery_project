import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final Color? fillColor;
  final Color? checkColor;
  final Color? borderColor;
  final double? borderWidth;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.fillColor,
    this.checkColor,
    this.borderColor,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return fillColor ?? Colors.white;
        },
      ),
      checkColor: checkColor ?? const Color.fromARGB(255, 64, 158, 234),
    );
  }
}
