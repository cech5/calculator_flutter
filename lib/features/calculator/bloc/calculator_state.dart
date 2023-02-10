part of 'calculator_cubit.dart';

class CalculatorState extends Equatable {
  const CalculatorState({
    this.mathResult = '',
    this.firstNumber = '',
    this.secondNumber = '',
    this.operation = '',
    this.hasSign = false,
  });

  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;
  final bool hasSign;

  @override
  List<Object> get props => [
        mathResult,
        firstNumber,
        secondNumber,
        operation,
        hasSign,
      ];

  CalculatorState copyWith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? operation,
    bool? hasSign,
  }) =>
      CalculatorState(
        firstNumber: firstNumber ?? this.firstNumber,
        mathResult: mathResult ?? this.mathResult,
        secondNumber: secondNumber ?? this.secondNumber,
        operation: operation ?? this.operation,
        hasSign: hasSign ?? this.hasSign,
      );
}
