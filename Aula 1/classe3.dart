class TV {
  int _volume = 0;

  void _aumentarVolume() {
    _volume++;
  }

  void ligar() {
    print("Ligando TV...");
  }
}

class SmartTV extends TV {
  @override
  void ligar() {
    super.ligar();

    print("Ligando SmartTV");
  }

  static String modeloTV() {
    return "SmartTV Telefunken";
  }

  @override
  String toString() {
    return "SmartTV - " + SmartTV.modeloTV();
  }
}

void main() {
  SmartTV smartTV = SmartTV();

  smartTV.ligar();

  print(SmartTV.modeloTV());

  print(smartTV);
}
