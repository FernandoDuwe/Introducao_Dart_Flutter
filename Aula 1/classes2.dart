class Produto {
  String nome = "";
  double valorUnitario = 0.0;

  Produto({required this.nome, required this.valorUnitario});

  /*
  Produto(String nome, double valorUnitario) {
    nome = nome;
    valorUnitario = valorUnitario;
  }
  */

  // Construtores nomeados
  Produto.gratuito(String nome) {
    this.nome = nome;

    valorUnitario = 0;
  }

  Produto.caro(String nome) {
    this.nome = nome;

    valorUnitario = 900000;
  }
}

void main() {
  Produto produto = Produto(nome: "Xicara", valorUnitario: 7.50);

  print(produto.nome);
  print(produto.valorUnitario);

  Produto aguaTorneira = Produto.gratuito("Água torneira");
  Produto astonMartin = Produto.caro("Aston Martin");
}
