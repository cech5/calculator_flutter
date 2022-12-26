import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.indigo,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height * 0.6,
            color: Colors.black,
            child: GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 4,
              children: const [
                CalculatorButton(
                  label: 'AC',
                  colorButton: Color.fromRGBO(166, 166, 166, 1),
                  colorText: Colors.black,
                ),
                CalculatorButton(label: '2'),
                CalculatorButton(label: '3'),
                CalculatorButton(label: '4'),
                CalculatorButton(label: '5'),
                CalculatorButton(label: '6'),
                CalculatorButton(label: '7'),
                CalculatorButton(label: '8'),
                CalculatorButton(label: '9'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.label,
    this.colorButton,
    this.colorText,
  });

  final String label;
  final Color? colorButton;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: colorText,
      backgroundColor: colorButton,
      onPressed: () => null,
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
