import 'package:meu_app_oo/service/NotificacaoInterface.dart';

import '../../classes/pessoa_abstract.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando Email para: ${pessoa.getNome()}");
  }
}
