/// Problem 62: Cubic permutations
///
/// The cube, 41063625 (345^3), can be permuted to produce two other cubes: 56623104 (384^3) and
/// 66430125 (405^3). In fact, 41063625 is the smallest cube which has exactly three permutations
/// of its digits which are also cube.
///
/// Find the smallest cube for which exactly five permutations of its digits are cube.
library euler.problem_062;

void main() {
  Map<String, List<int>> permutations = {};
  for (var base = 1;; base++) {
    var cube = base * base * base;
    var key =
        String.fromCharCodes(List.from(cube.toString().codeUnits)..sort());
    var values = permutations.putIfAbsent(key, () => <int>[])..add(cube);
    if (values.length == 5) {
      assert(values.first == 127035954683);
      return;
    }
  }
}
