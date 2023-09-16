class CalculoCombustivel {
  double valorGasolina = 6.04; // Atributo público
  double _valorAlcool = 5.40; // Atributo privado

  // Construtor
  CalculoCombustivel() {}

  // Método público
  double valorTotalAbastecimento(double qtdLitros) {
    return qtdLitros * valorGasolina;
  }

  // Método privado
  bool _gasolinaMaisBarataAlcool() {
    return valorGasolina < _valorAlcool;
  }

  // Getter
  double get valorAlcool => _valorAlcool;

  // Setter
  set valorAlcool(double novoValor) {
    if (novoValor <= 0) throw "O valor informado para alcool é inválido";

    _valorAlcool = novoValor;
  }
}

void main() {
  CalculoCombustivel calculo = new CalculoCombustivel();

  print(calculo.valorGasolina);
  print(calculo.valorAlcool);

  calculo.valorAlcool = -100;

  print(calculo.valorTotalAbastecimento(55).toStringAsFixed(2));
}
