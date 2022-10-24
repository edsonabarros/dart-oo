import 'package:meu_app_oo/service/EnviarNotificacao.dart';

import 'package:meu_app_oo/classes/pessoa_abstract.dart';

abstract class NotificacaoInterface {
  void EnviarNotificacao(Pessoa pessoa);
}
