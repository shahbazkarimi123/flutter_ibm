import 'package:flutter/material.dart';
import './input_page.dart';
void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              secondary: Colors.purple,
              primary: const Color(0xFF0A0E21),
            ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
      ),
      home: const InputPage(),
    );
  }
}
