import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  // 모든 화면이 runApp에 넘겨진 params의 위젯(root위젯)을 바탕으로 그려진다.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 상단바, 하단바, 시계 등의 시스템 UI를 제거한다.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xfff4eddb),
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
