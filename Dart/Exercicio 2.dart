/*
  Enunciado: Desenvolva uma função calculadora, que receberá três parâmetros:

             calculadora(double valor1, double valor2, String operacao)

             operacao pode ser igual a: “SOMA”, “SUBTRACAO”, “DIVISAO” e “MULTIPLICACAO”

             Obs: Os valores valor1 e valor2 podem ser nulos. Nesse caso, considere seu valor igual a zero (0).
*/

double calcular(double? valor1, double? valor2, String operacao) {
  switch (operacao) {
    case "SOMA":
      return (valor1 ?? 0) + (valor2 ?? 0);
      break;

    case "SUBTRACAO":
      return (valor1 ?? 0) - (valor2 ?? 0);
      break;

    case "DIVISAO":
      return (valor1 ?? 0) / (valor2 ?? 0);
      break;

    case "MULTIPLICACAO":
      return (valor1 ?? 0) * (valor2 ?? 0);
      break;

    default:
      return 0;
  }
}

void main() {
  print(" 2 + 2 = ${calcular(2, 2, 'SOMA')}");

  print(" 2 - 2 = ${calcular(2, 2, 'SUBTRACAO')}");

  print(" 2 * 2 = ${calcular(2, 2, 'MULTIPLICACAO')}");

  print(" 2 / 2 = ${calcular(2, 2, 'DIVISAO')}");

  print(" 0 + 0 = ${calcular(null, null, 'SOMA')}");
}
