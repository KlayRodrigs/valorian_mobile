import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorian_mobile/app/components/flex_component.dart';
import 'package:valorian_mobile/app/store/student_store.dart';

class ThirdForm extends StatelessWidget {
  final TextEditingController controller;
  ThirdForm({super.key, required this.controller});
  final StudentStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: height - (height * 0.2)),
        child: Column(
          children: [
            const FlexComponent(
              flex: 2,
            ),
            Image.asset(
              'assets/gender.png',
              height: 350,
            ),
            Row(
              children: [
                const FlexComponent(),
                Expanded(
                    flex: 10,
                    child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                            filled: true, label: Text('Sexo')),
                        alignment: Alignment.bottomCenter,
                        items: const [
                          DropdownMenuItem(
                              value: "Masculino", child: Text('Masculino')),
                          DropdownMenuItem(
                              value: "Feminino", child: Text('Feminino')),
                          DropdownMenuItem(
                              value: "Prefiro não informar",
                              child: Text('Prefiro não informar')),
                        ],
                        onChanged: (value) =>
                            store.setGender(value.toString()))),
                const FlexComponent(),
              ],
            ),
            const FlexComponent(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
