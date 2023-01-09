part of 'calculator_cubit.dart';

class CalculatorState {
  const CalculatorState({
    this.mathResult = '30',
    this.firstNumber = '10',
    this.secondNumber = '20',
    this.operation = '+',
  });

  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;
}
