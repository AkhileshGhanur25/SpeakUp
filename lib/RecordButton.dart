import 'package:flutter/material.dart';
import 'package:myapp/RecordWaves.dart';

class RecordButton extends StatefulWidget {
  const RecordButton({super.key});

  @override
  State<RecordButton> createState() => recButton();
}

// ignore: camel_case_types
class recButton extends State<RecordButton> {
  final duration = const Duration(milliseconds: 30000);

  var isRecording = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.5;

    return Stack(
      alignment: Alignment.center,
      children: [
        if (isRecording)
          RecordWaves(
            duration: duration,
            size: width,
          ),
        AnimatedContainer(
            width: width,
            height: width,
            duration: duration,
            decoration: BoxDecoration(
                border: Border.all(
                  color: isRecording
                      ? Colors.blue
                      : const Color.fromARGB(255, 244, 238, 238),
                  width: isRecording ? 4 : 1,
                ),
                borderRadius: BorderRadius.circular(width)),
            child: tapButton(width)),
      ],
    );
  }

  Widget tapButton(double size) => Center(
        child: GestureDetector(
          onTap: () => setState(() => isRecording = !isRecording),
          child: AnimatedContainer(
            duration: duration,
            width: isRecording ? size * 0.65 - 30 : size * 0.65,
            height: isRecording ? size * 0.65 - 30 : size * 0.65,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white.withOpacity(0),
                width: isRecording ? 4 : 8,
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                isRecording ? 20 : 80,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0),
                  blurRadius: isRecording ? 17.5 : 40,
                  spreadRadius: isRecording ? 7.5 : 20,
                )
              ],
            ),
            child: Center(
                child: Text(
              isRecording ? 'STOP' : 'RECORD',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      );
}
