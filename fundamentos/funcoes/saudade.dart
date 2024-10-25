String saudacao(String name, {DateTime? datetime}) {
  datetime ??= DateTime.now();
  int hour = datetime.hour;
  if (hour < 12) {
    return 'bom dia, $name!';
  } else if (hour < 18) {
    return 'Boa tarde, $name!';
  } else {
    return 'Boa tarde, $name!';
  }
}

void main(List<String> args) {
  print(saudacao('Maria'));
  print(saudacao('João',
                        datetime: DateTime(2023, 6, 13, 15 ,30)));
}
