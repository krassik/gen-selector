import 'package:flutter/material.dart';

class SensorTitleWidget extends StatefulWidget {
  final String title;
  bool state = false;
  SensorTitleWidget({super.key, required this.title});

  @override
  State<SensorTitleWidget> createState() => _SensorTitleWidgetState();
}

class _SensorTitleWidgetState extends State<SensorTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      trailing: Checkbox(
        value: widget.state ,
        onChanged: (value) {
          setState(() {
            widget.state = value!;
          });
        },
      ),
    ); // Replace with your desired widget content
  }
}
