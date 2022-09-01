import 'dart:math' show sqrt;

void main() {
  const a = "hello world";

  void reversePrint(String message) {
    print(message.split(" ").reversed.join(" "));
  }

  reversePrint(a);

  // -----------

  const nums = <double>[-1, 12, 132, 133, 14, 0, 24];

  double numsAverage(List<double> values) {
    if (values.isEmpty) {
      return 0;
    }
    return values.reduce((value, element) => value + element) / values.length;
  }

  print(numsAverage(nums));

  // -----------

  int disc({required int a, required int b, required int c}) {
    return b * b - 4 * a * c;
  }

  List<double> getRoots({
    required int a,
    required int b,
    required int c,
    required int disc,
  }) {
    if (disc < 0) {
      return [];
    }
    if (disc == 0) {
      final p = (-1) * b / (2.0 * a);
      return [p];
    }
    if (disc > 0) {
      final x1 = ((-1) * b + sqrt(disc)) / (2.0 * a);
      final x2 = ((-1) * b - sqrt(disc)) / (2.0 * a);
      return [x1, x2];
    }
    return [];
  }

  List<double> findRoots({required int a, required int b, required int c}) {
    if (a == 0) {
      throw Exception("Not a quadratic equation.");
    }
    final D = disc(a: a, b: b, c: c);

    final roots = getRoots(a: a, b: b, c: c, disc: D);
    return roots;
  }

  print(findRoots(a: 3, b: 5, c: -7));
}
