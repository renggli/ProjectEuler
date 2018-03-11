/// Problem 48: Self powers
///
/// The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
///
/// Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
library euler.problem_048;

import 'package:more/collection.dart';
import 'package:more/int_math.dart';

final max = 1000;

void main() {
  var sum = new IntegerRange(1, max + 1)
      .map((i) => new BigInt.from(i).pow(i))
      .reduce((a, b) => a + b);
  var digits = sum % new BigInt.from(10).pow(10);
  assert(digits.toInt() == 9110846700);
}