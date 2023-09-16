double fatorial(int valor) {
  if (valor > 99) throw "O valor $valor não é aceito para ser fatorado";

  double soma = 1;

  for (int i = 1; i <= valor; i++) soma = soma * i;

  return soma;
}

void main() {
  try {
    print(fatorial(500));
  } catch (e) {
    print("Ocorreu um erro ao realizar a fatoração: ${e}");
  }
}
