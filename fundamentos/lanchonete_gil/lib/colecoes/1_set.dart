void main(List<String> args) {
  print('\n// List [ permite valores duplicados]');
  var numerosList = [];
  numerosList.add(1);
  numerosList.add(2);
  numerosList.add(3);
  numerosList.add(4);
  numerosList.add(null);
  numerosList.add(5);
  print(numerosList);

  print('\n// Set [  não permite valores duplicados]');
  var numerosSet = <int?>{};

  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(4);
  numerosSet.add(null);
  numerosSet.add(5);
  print(numerosSet);

  print('\n// método List.toset() para transformar uma lista em um set');
  var numerosSetDeList = numerosList.toSet();

  print('\n Set também posusi os métodos interable');
  numerosSetDeList.forEach(print);

  print(' '
      '\n// Metodo difference de Set compara dois Sets e apresenta apenas os itens que exclusivos do primeiro conjuto'
      ' ');

  var conjuntoNumeros1 = {'1,2,3,4,5,6'};
  var conjuntoNumeros2 = {'1, 2, 3, 7'};
  print('conjunto 1: $conjuntoNumeros1');
  print('conjunto2 $conjuntoNumeros2');

  print(''
      '\n// Método diferente de set compara dois Sets e apresenta penas os itens que exclusivos do primeiros conjunto ');
  print('Itens exclusivos do conjunto 1 em relação ao 2');
  print(conjuntoNumeros1.difference(conjuntoNumeros1));

  print('itens exclusivos do conjunto 2 em relação ao 1');
  print(conjuntoNumeros2.difference(conjuntoNumeros1));

  print('//\n método union - junta dois sets');
  print(conjuntoNumeros1.union(conjuntoNumeros2));

  print(
      ' \n// método itersection - retorna apenas os itens qxistem nos dois conjuntos ');
  print(conjuntoNumeros1.intersection(conjuntoNumeros2));

  var conjuntoNome1 = {'Fulano', 'Beltrano', 'Siclano'};
  var conjuntoNome2 = {'Fulano', 'Beltrano'};
  print('\\Conjunto de nomes 1: $conjuntoNome1');
  print('\\Conjunto de nomes 1: $conjuntoNome2');
  print(
      'Inrsecção dos dois conjuntos ${conjuntoNome1.intersection(conjuntoNome2)}');

  print(
      '''\n// método lookup - pesquisa um i
      tem dentro do conjunto, se não encontar retorna null''');
  print(conjuntoNome2.lookup('Beltrano'));
  print(conjuntoNome2.lookup('Siclano'));

  print(''' \n// para retorna um item do conjunto
  atraves do indice, deve-se utilizar o 
  metodo elemenat(index) ''');
  print('Segundo nome do conjunto: ${conjuntoNome1.elementAt(1)}');
}
