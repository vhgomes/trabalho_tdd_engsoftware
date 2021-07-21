import 'dart:math' as math; 

class Pessoa{
  final String nome;
  final int idade;
  final double altura;
  final double peso;

  Pessoa({required this.nome,required this.idade,required this.altura,required this.peso});

  double get indiceMassaCorporal{
    var resultadoIMC = peso / math.pow(altura,2);
    resultadoIMC = resultadoIMC * 100;
    return resultadoIMC.roundToDouble() / 100;
  }

  bool get pessoaMaiorDeIdade{
    if(idade > 18){
      return true;
    }  else if(idade == 18){
      return true;
    }
    else {
      return false;
    }
  }

  String? get descricaoIMC{
    var imc = indiceMassaCorporal;
    var resultado;
    if (imc <= 18.50){
      resultado = 'Magreza';
    } else if(imc <= 24.90 && imc >= 18.50){
      resultado = 'Normal';
    } else if(imc >= 24.90 && imc <= 30){
      resultado = 'Sobrepeso';
    } else{
      resultado = 'Obesidade';
    }
    return resultado;
  }
}