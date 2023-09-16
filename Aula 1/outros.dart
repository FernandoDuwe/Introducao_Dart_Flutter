void main() {
  double? nota;
  late String nomeAluno;

  final notaFinal = 9.75;
  const pi = 3.14;

  print(notaFinal);

  List<String> chamada = ["Juarez", "Guilherme", "Fernando", "Fernando"];

  var chamadaSet = {'Juarez', "Guilherme", "Fernando", "Fernando"};

  Map<String, double> notas = {"Ana": 9.6, "Alberto": 5.6, "Camila": 10};

  //if (nota != null)
  notas["Ana"] = (nota ?? 10);

  /*
  print(chamada);
  print(chamadaSet);
  print(notas);
  
  print(chamada[0]);
  print(notas["Ana"]);
  */

  print("A nota da aluna $nota");
  print("A nota da aluna Ana é ${notas["Ana"]}");
}
