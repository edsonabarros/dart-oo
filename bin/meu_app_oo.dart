import 'package:meu_app_oo/classes/Pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa("Edson", "Rua 2");
  print(p1.getNome());
  print(p1.getEndereco());
  print(p1);
}
