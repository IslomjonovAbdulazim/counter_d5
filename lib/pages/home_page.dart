import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = true;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Color(0xff141414) : Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SizedBox(
            width: 450,
            height: 450,
            child: Stack(
              children: [
                Image.asset(
                  "assets/frame.png",
                  width: 450,
                  height: 450,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 250,
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "$counter",
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 80),
                          CupertinoButton(
                            color: Color(0xff603913),
                            borderRadius: BorderRadius.circular(100),
                            onPressed: () {
                              isDark = !isDark;
                              setState(() {});
                            },
                            child: Icon(
                              isDark ? Icons.light_mode : Icons.dark_mode,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          CupertinoButton(
                            color: Color(0xff603913),
                            borderRadius: BorderRadius.circular(100),
                            onPressed: () {},
                            child: Icon(
                              Icons.dark_mode,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 80),
                        ],
                      ),
                      CupertinoButton(
                        color: Color(0xff603913),
                        borderRadius: BorderRadius.circular(100),
                        onPressed: () {
                          counter += 1;
                          HapticFeedback.mediumImpact();
                          setState(() {});
                        },
                        child: SizedBox(height: 100, width: 100),
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
