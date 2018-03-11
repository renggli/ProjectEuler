/// Problem 25: 1000-digit Fibonacci number
///
/// The Fibonacci sequence is defined by the recurrence relation:
///
///     F_n = F_n1 + F_n2, where F_1 = 1 and F_2 = 1.
///
/// Hence the first 12 terms will be:
///
///     F_1 = 1
///     F_2 = 1
///     F_3 = 2
///     F_4 = 3
///     F_5 = 5
///     F_6 = 8
///     F_7 = 13
///     F_8 = 21
///     F_9 = 34
///     F_10 = 55
///     F_11 = 89
///     F_12 = 144
///
/// The 12th term, F_12, is the first term to contain three digits.
///
/// What is the first term in the Fibonacci sequence to contain 1000 digits?
library euler.problem_025;

import 'package:more/iterable.dart';

Iterable<BigInt> fibonacci() => fold([BigInt.one, BigInt.one], (e) => e[0] + e[1]);

void main() {
  var digits = 1000;
  var limit = new BigInt.from(10).pow(digits - 1);
  var count = fibonacci()
      .takeWhile((v) => v < limit)
      .fold(1, (a, b) => a + 1);
  assert(count == 4782);
}
