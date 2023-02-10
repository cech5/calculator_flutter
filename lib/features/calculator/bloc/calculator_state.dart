part of 'calculator_cubit.dart';

class CalculatorState extends Equatable {
  const CalculatorState({
    this.mathResult = '',
    this.firstNumber = '',
    this.secondNumber = '',
    this.operation = '',
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
