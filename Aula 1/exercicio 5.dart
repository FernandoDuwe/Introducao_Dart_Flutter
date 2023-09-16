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

class Aluno extends Pessoa {
  String _sala = "";
  String _curso = "";

  Aluno(int id, String nome, String sala, String curso)
      : super(id: id, nome: nome) {
    _sala = sala;
    _curso = curso;
  }

  String get sala => _sala;

  String get curso => _curso;
}

void main() {
  Pessoa pessoa = new Pessoa(id: 8, nome: "Fernando", apelido: "Duwe");

  print(pessoa.seApresentar());

  Aluno aluno = Aluno(247, 'Teobaldo', 'A-12', 'Introdução a Flutter');

  print(aluno.seApresentar());
  print(aluno.curso);
  print(aluno.sala);
}
