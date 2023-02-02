part of 'calculator_cubit.dart';

class CalculatorState extends Equatable {
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

  @override
  List<Object> get props => [mathResult, firstNumber, secondNumber, operation];

  CalculatorState copyWith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? operation,
  }) =>
      CalculatorState(
        firstNumber: firstNumber ?? this.firstNumber,
        mathResult: mathResult ?? this.mathResult,
        secondNumber: secondNumber ?? this.secondNumber,
        operation: operation ?? this.operation,
      );
}
