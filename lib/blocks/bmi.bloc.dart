import 'package:flutter_masked_text/flutter_masked_text.dart';

class bmiBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Fill the form to calculate your BMI";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = weight / (height * height);

    if (imc < 18.6) {
      result = "Underweight (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Normal weight (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 34.9) {
      result = "Slightly Overweight(${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Overweight level 1 (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Overweight level 2 (${imc.toStringAsPrecision(2)})";
    }
  }
}
