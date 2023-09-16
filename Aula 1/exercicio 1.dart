void main() {
  List<double> notas = [9.5, 7, 8.5, 10];

  double total = 0;

  /*
  for (int i = 0; i < notas.length; i++)
    total = notas[i] + total;
  */

  /*
  for (double notaAtual in notas)
    total = notaAtual + total;
  */

  notas.forEach((double notaAtual) => total += notaAtual);

  print(total / notas.length);
}
