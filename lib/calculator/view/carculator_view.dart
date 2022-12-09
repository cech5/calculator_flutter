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
            height: MediaQuery.of(context).size.height * 0.6,
            color: Colors.lightBlue,
            child: GridView.count(
              mainAxisSpacing: 1,
              crossAxisSpacing: 4,
              crossAxisCount: 4,
              children: [
                FloatingActionButton(
                  onPressed: () => null,
                  child: Text(
                    '1',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => null,
                  child: Text(
                    '2',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                ColoredBox(
                  color: Colors.cyan,
                ),
                ColoredBox(
                  color: Colors.pink,
                ),
                ColoredBox(
                  color: Colors.amber,
                ),
                ColoredBox(
                  color: Colors.blueGrey,
                ),
                ColoredBox(
                  color: Colors.cyan,
                ),
                ColoredBox(
                  color: Colors.pink,
                ),
                ColoredBox(
                  color: Colors.amber,
                ),
                ColoredBox(
                  color: Colors.blueGrey,
                ),
                ColoredBox(
                  color: Colors.cyan,
                ),
                ColoredBox(
                  color: Colors.pink,
                ),
                ColoredBox(
                  color: Colors.amber,
                ),
                ColoredBox(
                  color: Colors.blueGrey,
                ),
                ColoredBox(
                  color: Colors.cyan,
                ),
                ColoredBox(
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => null,
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
