import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class CalculoController {
  var weightController = MaskedTextController(mask: '000');
  var heightController = MaskedTextController(mask: '000');
  var resultCalc = "Preencha os dados para calcular o IMC";

  calculateImc() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text) / 100;
    double imc = weight / (height * height);

    if (imc < 18.5) {
      resultCalc = "Magreza (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.5 && imc <= 24.9) {
      resultCalc = "Normal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 30) {
      resultCalc = "Sobrepeso (${imc.toStringAsPrecision(2)})";
    } else {
      resultCalc = "Obesidade (${imc.toStringAsPrecision(2)})";
    }
  }
}
