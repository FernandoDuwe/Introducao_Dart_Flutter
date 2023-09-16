void teste() {
  print("Oi, eu sou o teste");
}

void testeNome(String nome) {
  print("Oi, você é o $nome");
}

double calculaNotas() {
  return 10 / 3;
}

int soma(int valor1, int valor2) => valor1 + valor2;

double? calcularNotasAluno() {
  if (1 == 1) return 10;

  return null;
}

void main() {
  Map<String, double> notas = {
    "Mariazinha": 9,
    "Joãozinho": 7.5,
    "Anacleto": 8
  };

  notas.forEach((String nome, double nota) {
    print("A nota do aluno $nome é $nota");
  });
}
