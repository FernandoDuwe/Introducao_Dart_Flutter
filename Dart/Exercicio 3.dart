/*
  Enunciado: Desenvolva uma função que retorne o fatorial de um número. Caso o número passado por parâmetro for maior que 99,
             você deverá gerar uma exceção, avisando que o número passado por parâmetro não é aceito, por ser grande demais. 

	           Ao chamar esse método, você deve tratar qualquer exceção gerada, exibindo a seguinte mensagem no console:
             “Ocorreu um erro ao executar o fatorial: <mensagem de erro>” e exibi-la no console.
*/

double fatorial(int valor) {
  double result = 1;

  if (valor > 99) throw "O valor $valor é grande demais para ser fatorado";

  for (var i = 2; i <= valor; i++) {
    print("$result * $i");

    result = (result * i);
  }

  return result;
}

void main() {
  try {
    print("5! = ${fatorial(5)}");

    print("134! = ${fatorial(134)}");
  } catch (e) {
    print("Ocorreu um erro ao executar o fatorial: $e");
  }
}
