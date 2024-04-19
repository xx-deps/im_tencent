import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:im_tencent/im_tencent.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: _onPressd,
          child: const Icon(Icons.add),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }

  void _onPressd() async {
    final r = Calculator().addOne(10);
    if (kDebugMode) print("✅ $r");
  }
}
