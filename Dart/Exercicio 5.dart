/*
  Enunciado: Crie uma classe chamada “Aluno”, herdando a classe Pessoa, criada no exercício anterior.
             Esta classe deve possuir os seguintes atributos:

             Sala: String, privado. Deve ser criado um getter para ler seu conteúdo;

             Curso: String, privado. Deve ser criado um getter para ler seu conteúdo;

             Ambos devem ser preenchidos no método construtor, enviando também o ID da pessoa;
*/

class Pessoa {
  late final String id;
  String nome = "";
  String? _apelido;

  Pessoa(this.id);

  String get apelido {
    return this._apelido ?? "";
  }

  set apelido(String prApelido) {
    this._apelido = prApelido;
  }

  String nomeCompleto() {
    if (this._apelido != null) {
      return "${this.nome} - ${this.apelido}";
    } else {
      return "${this.nome}";
    }
  }
}

class Aluno extends Pessoa {
  String _sala = "";
  String _curso = "";

  Aluno(String prID, String prSala, String prCurso) : super(prID) {
    this._curso = prCurso;
    this._sala = prSala;
  }

  String get sala {
    return this._sala;
  }

  String get curso {
    return this._curso;
  }
}

void main(List<String> args) {
  Aluno vrAluno = Aluno("1906", "Sala 1", "Flutter S2");

  print("ID da Pessoa: ${vrAluno.id}");
  print("Nome da Pessoa: ${vrAluno.nome}");
  print("Apelido da Pessoa: ${vrAluno.apelido}");
  print("Nome completo da Pessoa: ${vrAluno.apelido}");
  print("Sala: ${vrAluno.sala}");
  print("Curso: ${vrAluno.curso}");
}
