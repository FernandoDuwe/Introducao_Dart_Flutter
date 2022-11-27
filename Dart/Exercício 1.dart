/*
  Enunciado: Vamos criar um sistema de cálculo de notas? A aplicação deve
             armazenar uma quantidade N de notas e calcular a média a qual
             o aluno chegou. A nota para passar de ano é 7.
*/

void main() {
  List vrNotas = [9.5, 7, 8.3];

  double vrMediaAlcancada = 0;

  // Somando todas as notas do aluno
  for (var i = 0; i < vrNotas.length; i++) vrMediaAlcancada += vrNotas[i];

  // Calculando a média
  vrMediaAlcancada = (vrMediaAlcancada / vrNotas.length);

  if (vrMediaAlcancada >= 7) {
    print("Parabéns, você passou de ano. Sua nota é $vrMediaAlcancada");
  } else {
    print("Infelizmente você não passou de ano. Sua nota é $vrMediaAlcancada");
  }
}
