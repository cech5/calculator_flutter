import 'package:flutter/material.dart';

import 'carculator_view.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  Route<void> route() => MaterialPageRoute(
        builder: (context) => const CalculatorPage(),
      );

  @override
  Widget build(BuildContext context) {
    return const CalculatorView();
  }
}
