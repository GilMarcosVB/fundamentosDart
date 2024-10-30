void main(List<String> args) {
  print('O literal de um map é igual ao set, utilizando as chaves {}');
  print('para diferenciar utlizamos os genérics na declaração');
  print('- um para definir a chave');
  print('- Outro para definir o valor');

  final mapaDePacientes = <String, String>{
    'nome': 'Fulano De tal',
    'Funcao': 'Desenvolver'
  };

  Map<String, String> MapaDePacientesNaoPermiteNulos = {};
  Map<String, String>? MapaDePacientesNaoPermiteNulo = null;
  Map<String?, String> MapaDePacientesNaoPermiteChavesNulos = {
    null: 'Fulano do Tal',
    null: 'Desenvolvedor'
  };

  Map<String, String?> mapaDePacientesPermiteValoresNulos = {
    'nome': null,
    'funcao': null,
  };

  print(
      '// Declaração de um mapa com uma lista dentro dele igual a uma estrutura de JSON');

  var mapaAninhado = <String, Object>{
    'nome': 'Escola De Dart',
    'curso': [
      {'nome': 'Dart', 'descricao': 'Fundamentos da linguagem Dart'}
    ]
  };

// Imprimindo o mapa de forma legivel
  print(mapaAninhado);

  print('Escola ${mapaAninhado['nome']}');
  print('Curso');
  for (var curso in mapaAninhado['cursos'] as List) {
    print('- ${curso['nome']};  ${curso['descricao']} ');
  }
}
