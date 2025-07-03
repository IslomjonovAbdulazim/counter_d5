import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HwPage extends StatefulWidget {
  const HwPage({super.key});

  @override
  State<HwPage> createState() => _HwPageState();
}

class _HwPageState extends State<HwPage> {
  int counter1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CupertinoButton(
                        onPressed: () {
                          if (counter1 == 0) return;
                          counter1--;
                          setState(() {});
                        },
                        color: Color(0xffA221FF),
                        borderRadius: BorderRadius.circular(0),
                        child: Icon(
                          CupertinoIcons.minus,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "$counter1",
                        style: TextStyle(fontSize: 40),
                      ),
                      SizedBox(width: 20),
                      CupertinoButton(
                        onPressed: () {
                          counter1++;
                          setState(() {});
                        },
                        color: Color(0xffA221FF),
                        borderRadius: BorderRadius.circular(0),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
