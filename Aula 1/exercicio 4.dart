class Pessoa {
  final int id;
  String nome;
  String? _apelido;

  Pessoa({required this.id, required this.nome, String? apelido}) {
    _apelido = apelido;
  }

  String seApresentar() {
    String textoApelido = "";

    if (_apelido != null) textoApelido = " e meu apelido é $_apelido";

    return "Oi, meu nome é $nome" + textoApelido;
  }
}

void main() {
  Pessoa pessoa = new Pessoa(id: 8, nome: "Fernando", apelido: "Duwe");

  print(pessoa.seApresentar());
}
