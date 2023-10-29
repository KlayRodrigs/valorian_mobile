import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorian_mobile/app/pages/add_page/add_page.dart';
import 'package:valorian_mobile/app/pages/homepage.dart';
import 'package:valorian_mobile/app/pages/list_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  routes(r) {
    r.child('/homepage',
        child: (context) => const Homepage());
    r.child(
      '/add',
      child: (context) => const AddPage(),
    );
    r.child(
      '/list',
      child: (context) => const ListPage(),
    );
    r.child(
      '/update',
      child: (context) => const AddPage(),
    );
    r.child(
      '/remove',
      child: (context) => const AddPage(),
    );
  }
}
