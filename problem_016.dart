/**
 * Problem 16: Power digit sum
 *
 * 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
 *
 * What is the sum of the digits of the number 2^1000?
 */
library problem_016;

num power(int x, int n) {
  if (n == 0) {
    return 1;
  } else if (n < 0) {
    return 1 / -power(x, -n);
  } else if (n.isEven) {
    return power(x * x, n ~/ 2);
  } else {
    return x * power(x, n - 1);
  }
}

var exp = 1000;

void main() {
  var offset = '0'.runes.first;
  print(power(2, exp)
      .toString()
      .runes
      .map((each) => each - offset)
      .reduce((a, b) => a + b)); // 1366
}