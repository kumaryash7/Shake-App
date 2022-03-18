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
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                title: const Text("Shake The Phone To Swap the Colours"),
              ),
              body: Padding(
                padding: const EdgeInsets.all(35.0),
                child: SizedBox(
                  height: 700,
                  width: 300,
                  child: Row(
                    children: [
                      Container(
                        height: 350,
                        width: 150,
                        color: Colors.red,
                      ),
                      Container(
                        height: 350,
                        width: 150,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                title: const Text("Shake The Phone To Swap the Colours"),
              ),
              body: Padding(
                padding: const EdgeInsets.all(35.0),
                child: SizedBox(
                  height: 700,
                  width: 300,
                  child: Row(
                    children: [
                      Container(
                        height: 350,
                        width: 150,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 350,
                        width: 150,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
