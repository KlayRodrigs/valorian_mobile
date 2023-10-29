import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorian_mobile/app/interfaces/http_service_interface.dart';
import 'package:valorian_mobile/app/modules/home_module.dart';
import 'package:valorian_mobile/app/pages/splashscreen_page.dart';
import 'package:valorian_mobile/app/services/http_service.dart';

//Modulo geral da aplicação(camadas)
class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<IHttpService>(HttpService.new);
  }

  @override
  routes(r) {
    r.child('/', child: (context) => const SplashscreenPage());
    r.module('/home', module: HomeModule(),);
  }
}
