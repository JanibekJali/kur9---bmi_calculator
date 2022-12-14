import 'dart:math' as math;

class BmiLocalData {
  static double calculateBmi({int? weight, int? height}) {
    final bmi = weight! / math.pow(height! / 100, 2);

    return bmi;
  }

  static String getResult(double bmi) {
    if (bmi >= 25) {
      return 'Семиз';
    } else if (bmi > 18.5) {
      return 'Норма';
    } else {
      return 'Арык';
    }
  }

  static String getDescription(double bmi) {
    if (bmi >= 25) {
      return 'Арыкташын керек экен, машык';
    } else if (bmi > 18.5) {
      return 'Уктап жата бер, салмак норма';
    } else {
      return 'Кобураак же арык экенсин';
    }
  }
}
