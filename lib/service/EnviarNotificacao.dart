import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/NotificacaoInterface.dart';
import 'package:meu_app_oo/service/impl/NotificacaoEmail.dart';
import 'package:meu_app_oo/service/impl/NotificacaoPushNotification.dart';
import 'package:meu_app_oo/service/impl/NotificacaoSMS.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!
          .EnviarNotificacao(pessoa); // ! certeza que o notificação tem valor
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
