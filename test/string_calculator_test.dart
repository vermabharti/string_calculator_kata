import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  test('Empty string should return 0', () {
    expect(calculator.add(""), 0);
  });

  test('Single number should return the number itself', () {
    expect(calculator.add("1"), 1);
  });

  test('Two numbers should return their sum', () {
    expect(calculator.add("1,5"), 6);
  });
}
