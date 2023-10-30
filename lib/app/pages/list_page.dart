import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';
import 'package:valorian_mobile/app/services/http_service.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  Future<Map<String, dynamic>> data() async {
    Map<String, dynamic> data =
        await HttpService().get(path: "/api/teacher/list");
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background2Color,
      body: TextButton(
        onPressed: () {
          Modular.to.navigate('/home/homepage');
        },
        child: Text(
          "Voltar",
          style: TextStyle(color: AppColors.corBranca),
        ),
      ),
    );
  }
}
