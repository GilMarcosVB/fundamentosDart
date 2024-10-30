void main() {
  try {
    int resultado = divideNumero(10, 0);
    print("Resultado da Divisão $resultado");
//  } on IntegerDivisonbyZeroExcepton{
  } /* on UnsupportedError {
    print('O divisor deve ser diferente de zero');
  } on NoSuchMethodError {
    print('O Dividendo e o divisor deve ser um número');
  }*/
  catch (e) {
    print("Erro $e");
  } finally {
    print("Fim do Sistema");
  }
}

int divideNumero(dividendo, divisor) {
  if (dividendo is! int)
    throw Exception('O Dividendo e o divisor deve ser um número');
  else if (divisor is! int)
    throw Exception('O Divisor deve ser um número');
  else if (divisor == 0)
    throw Exception('O Divisor deve ser diferente do zero');
  else
    return dividendo ~/ divisor;
}
