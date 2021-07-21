import 'package:test/test.dart';
import 'package:teste_eng_soft/pessoa.dart';

// IMC = peso/ (altura x altura)
void main() {
  var pessoa = Pessoa(nome: 'Victor', idade: 21, altura: 1.80, peso: 60);
  test('The value of IMC returned from the function indiceMassaCorporal() has to be 18.52', () {
    expect(pessoa.indiceMassaCorporal, 18.52);
  });
  test('The return of the funcion descricaoIMC() has to be equal to Normal', () {
    expect(pessoa.descricaoIMC, 'Normal');
  });
  group('pessoaMaiorDeIdade', () {
  test('The return of the function pessoaMaiorDeIdade() has to be TRUE if the person is older than 18', () {
    expect(pessoa.pessoaMaiorDeIdade, true);
  });
  test('The return of the function pessoaMaiorDeIdade() has to be TRUE if the person age is equal to 18', () {
    expect(pessoa.pessoaMaiorDeIdade, true);
  });
  test('The return of the function pessoaMaiorDeIdade() has to be FALSE if the person age is below 18', () {
    expect(pessoa.pessoaMaiorDeIdade, false);
  });
});
}
