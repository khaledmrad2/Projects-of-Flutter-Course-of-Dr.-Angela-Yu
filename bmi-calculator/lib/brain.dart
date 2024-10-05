import 'dart:math';

class CalculatorBrain {
  int height = 0;
  int weight = 0;
  double _bmi = 0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'وزن زائد !';
    } else if (_bmi > 18.5) {
      return 'عادي';
    } else {
      return 'وزن منخفض';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'لديك وزن زائد ! , حاول ان تتمرن اكثر ';
    } else if (_bmi >= 18.5) {
      return '! لديك جسم متوسط الوزن ,أحسنت ';
    } else {
      return 'لديك انخفاض في الوزن ,   حاول ان تاكل اكثر !';
    }
  }
}
