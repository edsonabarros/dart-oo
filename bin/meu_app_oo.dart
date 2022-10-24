import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica("Edson", "Rua 3", "48493874522",
      tipoNotificacao: TipoNotificacao.PUSH_NOTIFICATION);
  print(pessoaFisica1);

  var pessoaJuridica1 =
      PessoaJuridica("Empresa1", "Endereço 1", "10000100001000");
  print(pessoaJuridica1);
  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaJuridica1);
  enviarNotificacao.notificar(pessoaFisica1);
}
