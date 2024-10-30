void main(List<String> args) {
  String nomeNonNullSafety;
  // Variavel non-nullable tem que initicializar antes de utilizar
  nomeNonNullSafety = '';
  print('Está vazia ${nomeNonNullSafety.isEmpty} ');

  String? nomeNullSafety;
  // não igual != diferente
  if (nomeNullSafety != null) {
    print("Esta vazia ${nomeNullSafety.isEmpty}");
  }

  String? nomeNullSafety1;
  //  . ! Ignora as validaçãoes do null safety e vc fica responsável em garantir
  // que a variavel não esta nula

  print('nomeNullSafety1 Esta vazia ${nomeNullSafety1!.isEmpty}');

  String? nomeNullSafety2;
// È um

  print(
      'nomeNullSafety2 Está vázia ${nomeNullSafety2?.isEmpty ?? 'Não prenchido'}  ');
  print('nomeNullSafety2 Está vázia ${nomeNullSafety2?.isEmpty ?? true}  ');

  String? nomeNullSafety3 = 'Fulano';
  print(
      'nomeNullSafety3 está vazia ${nomeNullSafety3.isEmpty ?? 'Não prenchido'}');
  print('nomeNullSafety3 está vazia ${nomeNullSafety3.isEmpty ?? true} ');
}
