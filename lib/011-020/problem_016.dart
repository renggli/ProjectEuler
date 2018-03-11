/// Problem 16: Power digit sum
///
/// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
///
/// What is the sum of the digits of the number 2^1000?
library euler.problem_016;

import 'package:more/collection.dart';

void main() {
  var number = new BigInt.from(2).pow(1000);
  var sum = string(number)
      .fold(0, (a, b) => a + int.parse(b));
  assert(sum == 1366);
}