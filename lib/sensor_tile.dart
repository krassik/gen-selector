import 'package:flutter/material.dart';

class SensorTitleWidget extends StatefulWidget {
  final String title;
  //bool state = false;
  const SensorTitleWidget({super.key, required this.title});

  @override
  State<SensorTitleWidget> createState() => _SensorTitleWidgetState();
}

class _SensorTitleWidgetState extends State<SensorTitleWidget> {
  
  bool state = false;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      trailing: Checkbox(
        value: state ,
        onChanged: (value) {
          setState(() {
            state = value!;
          });
        },
      ),
    ); // Replace with your desired widget content
  }
}
