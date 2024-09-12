void main(List<String> args) {
  final numeros = [1, 2, 3, 4];
  print(numeros);

// metodo add
  numeros.add(5);
  print(numeros);

  //não permite reatribuir um valor em uma variavel final
  // numeros = [6, 7, 8, 9];

  final nomes = ['Fulano', 'Beltrano'];
  print(nomes);

  nomes.add('Siclano');
  print(nomes);

// Acesso ao item da lista através do indice - Indicializa com o indice 0

// Imprime o primeiro item da lista
  print(nomes[0]);

// imprime o terceiro item da linha
  print(nomes[2]);

/* Metodo insert do list - adiciona um item na poção determinada */
  nomes.insert(0, 'Novo Primeiro');
  print(nomes);

/* ------- metodo addALL - adiciona uma lista dentro de outro*/
  final nomes1 = ['Fulano 1', 'Beltrano 1'];
  nomes.addAll(nomes1);
  print(nomes);

/*-------- Metodo inserAll- adiciona uma lista dento de outro */
  final nomes2 = ['Fulano 2', 'Beltrano 2'];
  nomes.insertAll(3, nomes2);
  print(nomes);

/* ------ Metodo remove exclui um item da lista*/
// utiliza o perador igual ==
  nomes.remove("Fulano 1");
  print(nomes);

// remove Beltrano 1
  nomes.remove("Beltrano 1");
  print(nomes);

/* ------------ método remoewhere - remove um item que atnede um criterio */
  nomes.removeWhere((nome) {
    /// Fulano
    /// Fulano 2

    print("Nome Procurado ${nome.substring(0, 6)}");
    // if (nome.contains("fulano")) {
    if (nome.substring(0, 6) != "Fulano") {
      // Outro tipo de diferente loop
      return true;
    } else {
      return false;
    }
  });

  print(nomes);

// utilizando lambda
  nomes.removeWhere((nome) => nome.substring(0, 6) != "Fulano");
}
