import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myapp/RecordButton.dart';
import 'package:myapp/button.dart';
import 'package:myapp/button2.dart';

import 'package:myapp/main.dart';
import 'package:myapp/textfield.dart';

void main() => runApp(const MyApp());

class RecAudio extends StatelessWidget {
  RecAudio({super.key});
  final text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 50, 51, 57),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 50, 51, 57),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: EdgeInsets.all(18),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(children: [
          SizedBox(height: 50),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Record',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 246, 244, 244),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          RecordButton(),
          SizedBox(height: 50),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Text',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 246, 244, 244),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          textfield(
            controller: text,
            hintText: 'Enter text here',
            obscureText: false,
          ),
          SizedBox(height: 20),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: MyButton(),
            )
          ]),
          SizedBox(height: 30),
          Button(),
        ]),
      ),
    );
  }
}
