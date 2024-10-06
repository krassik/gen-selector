import 'package:flutter/material.dart';

class SelfTitleWidget extends StatefulWidget {
  const SelfTitleWidget({super.key});

  @override
  State<SelfTitleWidget> createState() => _SelfTitleWidgetState();
}

class _SelfTitleWidgetState extends State<SelfTitleWidget> {
  double gender = 0.5;

  @override
  Widget build(BuildContext context) {
    const double originalFontSize = 36;
    Color f2mColor(double gender) {
      return Color.lerp(const Color.fromARGB(255, 255, 80, 138),
          const Color.fromARGB(255, 13, 28, 237), gender)!;
    }

    return ListTile(
        title: Row(
      children: [
        const Text(
          "Inclusive\nSelector:",
          //style: TextStyle(fontSize: 14),
          maxLines: 2,
        ),
        const Spacer(),
        Icon(
          Icons.female,
          size: (1 - gender) * originalFontSize,
          color: f2mColor(gender),
        ),
        Slider(
            activeColor: f2mColor(gender),
            //inactiveColor: Colors.grey,
            value: gender,
            min: 0,
            max: 1,
            onChanged: (double value) {
              setState(() {
                gender = value;
              });
            }),
        Icon(
          Icons.male,
          color: f2mColor(gender),
          size: gender * originalFontSize,
        ),
      ],
    )); // Replace with your desired widget content
  }
}
