import 'package:calculator_flutter/calculator/view/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:calculator_flutter/counter/counter.dart';
import 'package:calculator_flutter/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CalculatorPage(),
    );
  }
}
