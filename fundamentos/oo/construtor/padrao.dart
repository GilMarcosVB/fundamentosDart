class Carro {
  String? fabricante;
  String? modelo;
  int? anoFabricacao;
  int? anoModelo;
  bool? temABS;

// Construtor padrão

  void imprimeDados() {
    print(RetornaDados());
  }

  String RetornaDados() {
    return "Fabricante: ${this.fabricante} \n" +
        "modelo: ${this.modelo}\n" +
        "Ano de Fabricação: ${this.anoFabricacao}\n"
            "Ano do Modelo: ${this.anoModelo}\n"
            "Tem ABS: ${this.temABS! ? "SIM" : "NÃO"}";
  }

  @override
  String ToString() {
    return RetornaDados();
  }
}
