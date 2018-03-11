/// Problem 20: Factorial digit sum
///
/// n! means n  (n  1)  ...  3  2  1
///
/// For example, 10! = 10  9  ...  3  2  1 = 3628800,
/// and the sum of the digits in the number 10!
/// is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
///
/// Find the sum of the digits in the number 100!
library euler.problem_020;

import 'package:more/collection.dart';

final number = 100;

void main() {
  var val = new IntegerRange(1, 100)
      .fold(BigInt.one, (a, b) => a * new BigInt.from(b));
  var sum = string(val)
      .fold(0, (a, b) => a + int.parse(b));
  assert(sum == 648);
}