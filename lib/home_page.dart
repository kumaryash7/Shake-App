library shake;

import 'package:flutter/material.dart';

import 'package:shake/helper/shake_det.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ShakeDetector? detector;
  int counteer = 0;
  @override
  void initState() {
    super.initState();

    detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
          counteer++;
        });
      },
    );
  }

  @override
  void dispose() {
    detector!.stopListening();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (counteer % 2 == 0)
        ? Row(
            children: [
              Column(
                children: [
                  SingleChildScrollView(
                      child: Container(
                    height: 800,
                    width: 190,
                    color: Colors.blue,
                  ))
                ],
              ),
              SingleChildScrollView(
                  child: Container(
                height: 1000,
                width: 190,
                color: Colors.red,
              ))
            ],
          )
        : Row(
            children: [
              Column(
                children: [
                  SingleChildScrollView(
                      child: Container(
                    height: double.infinity,
                    width: double.infinity / 2,
                    color: Colors.red,
                  ))
                ],
              ),
              SingleChildScrollView(
                  child: Container(
                height: double.infinity,
                width: double.infinity / 2,
                color: Colors.blue,
              ))
            ],
          );
  }
}
