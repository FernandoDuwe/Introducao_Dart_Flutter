void switchFuncao(int numero) {
  if (numero == 1) {
    print("um");
  } else if (numero == 2) {
    print("dois");
  } else if (numero == 3) {
    print("três");
  } else if (numero == 4) {
    print("quatro");
  } else {
    print("não sei");
  }
}

void switchLimpo(int numero) {
  if (numero == 1) {
    print("um");
    return;
  }

  if (numero == 2) {
    print("dois");

    return;
  }

  if (numero == 3) {
    print("três");
    return;
  }

  if (numero == 4) {
    print("quatro");
    return;
  }

  print("não sei");
}

void main() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) continue;

    if (i == 3) break;

    print(i);
  }

  int numero = 200;

  switch (numero) {
    case 1:
      print("um");
      break;

    case 2:
      print("dois");
      break;

    case 3:
      print("três");
      break;

    case 4:
      print("quatro");
      break;

    default:
      print("Não sei");
  }
}
