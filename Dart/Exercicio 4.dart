/*
  Enunciado: Crie uma classe chamada “Pessoa”. Esta classe deve possuir os seguintes atributos:

                ID: só pode ser preenchido uma vez, no construtor;

                Nome: String, Atributo público;

                Apelido: Atributo privado, podendo ser nulo;

             Você deverá criar também um método público, que retorna o nome completo, junto com o seu apelido.
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

void main(List<String> args) {
  Pessoa vrPessoa = new Pessoa("32321");

  print("ID da Pessoa: ${vrPessoa.id}");
  print("Nome da Pessoa: ${vrPessoa.nome}");
  print("Apelido da Pessoa: ${vrPessoa.apelido}");
  print("Nome completo da Pessoa: ${vrPessoa.apelido}");
}
