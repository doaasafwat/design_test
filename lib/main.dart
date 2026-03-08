import 'package:flutter/material.dart';
import 'package:test_design/features/progress/screens/progress_screen.dart';

void main() {
  runApp(const DesignTest());
}

class DesignTest extends StatelessWidget {
  const DesignTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyProgressScreen(),
    );
  }
}
