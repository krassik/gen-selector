import 'package:flutter/material.dart';

class SelfTitleWidget extends StatefulWidget {
  //final String title;
  double gender = 0.5;
  SelfTitleWidget({super.key});

  @override
  State<SelfTitleWidget> createState() => _SelfTitleWidgetState();
}

class _SelfTitleWidgetState extends State<SelfTitleWidget> {
  @override
  Widget build(BuildContext context) {
    
    const double originalFontSize = 36;
    
    return ListTile(
        title: Row(
      children: [
        const Text("Inclusive Gender:",
        style: TextStyle(fontSize: 14),),
        const Spacer(),
        Icon(Icons.female,
             size: (1 - widget.gender) * originalFontSize,
        ),
        Slider(
            value: widget.gender,
            min: 0,
            max: 1,
            onChanged: (double value) {
              setState(() {
                widget.gender = value;
              });
            }),
        Icon(Icons.male,
             size: widget.gender * originalFontSize,
        ),
      ],
    )); // Replace with your desired widget content
  }
}
