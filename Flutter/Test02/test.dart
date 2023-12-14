import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.star), // Icon in the upper left corner
          title: const Text('플러터 앱 만들기'),
          centerTitle: true, // Center the title
        ),
        body: Column(
          children: [
            const Divider(
                color: Colors.black,
                thickness: 2), // Divider as a border between AppBar and body
            Expanded(
              child: Center(
                child: OutlinedButton(
                  onPressed: () {
                    print('버튼이 눌렸습니다'); // Print to debug console
                  },
                  style: OutlinedButton.styleFrom(
                    side:
                        const BorderSide(color: Colors.black), // Outline color
                    shape: const RoundedRectangleBorder(
                      // Rectangular shape
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('Text'),
                ),
              ),
            ),
            Stack(
              children: [
                for (var i = 0; i < 5; i++)
                  Container(
                    width: 300.0 - 60 * i,
                    height: 300.0 - 60 * i,
                    decoration: BoxDecoration(
                      color: getRandomColor(),
                      border: Border.all(),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 20), // Spacing at the bottom
          ],
        ),
      ),
    );
  }

  // 랜덤으로 사각형에 색상 입히는 함수
  Color getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}
