void main() {
  print((1 == 2) || (2 == 2));
  print((1 == 2) && (2 == 2));

  print(false is String);
  print("Nome" is String);

  print((14 as double).runtimeType);

  double nota = 5.9;

  print((nota >= 7 ? "Passou de ano" : "Não passou"));
}
