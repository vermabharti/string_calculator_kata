class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final delimiters = [',', '\n'];
    String numberString = numbers;

    if (numbers.startsWith("//")) {
      final parts = numbers.split('\n');
      final customDelimiter = parts[0].substring(2);
      numberString = parts.sublist(1).join('\n');
      delimiters.add(customDelimiter);
    }

    final regex = RegExp(delimiters.map(RegExp.escape).join('|'));
    return numberString.split(regex).map(int.parse).reduce((a, b) => a + b);
  }
}
