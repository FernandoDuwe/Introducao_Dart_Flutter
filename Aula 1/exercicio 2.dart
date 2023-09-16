double calculadora(double? valor1, double? valor2, String operacao) {
  double resultado = 0;

  switch (operacao) {
    case "SOMA":
      resultado = (valor1 ?? 0) + (valor2 ?? 0);
      break;

    case "SUBTRACAO":
      resultado = (valor1 ?? 0) - (valor2 ?? 0);
      break;

    case "MULTIPLICACAO":
      resultado = (valor1 ?? 0) * (valor2 ?? 0);
      break;

    case "DIVISAO":
      resultado = (valor1 ?? 0) / (valor2 ?? 0);
      break;
  }

  return resultado;
}

void main() {
  print(calculadora(2, 2, "SOMA"));

  print(calculadora(2, 2, "SUBTRACAO"));

  print(calculadora(2, 2, "MULTIPLICACAO"));

  print(calculadora(2, 2, "DIVISAO"));
}
