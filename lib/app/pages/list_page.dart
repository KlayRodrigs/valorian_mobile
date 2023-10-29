import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Modular.to.navigate('/home/homepage');
          },
          child: const Text("Voltar"),
        ),
      ],
    );
  }
}
