import 'package:meu_app_oo/service/NotificacaoInterface.dart';

import '../../classes/pessoa_abstract.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando SMS para: ${pessoa.getNome()}");
  }
}
