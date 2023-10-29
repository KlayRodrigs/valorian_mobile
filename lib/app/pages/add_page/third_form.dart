import 'package:flutter/material.dart';
import 'package:valorian_mobile/app/components/flex_component.dart';

class ThirdForm extends StatelessWidget {
  const ThirdForm({super.key});

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
            Image.asset('assets/gender.png', height: 350,),
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
                          DropdownMenuItem(value: 0, child: Text('Masculino')),
                          DropdownMenuItem(value: 1, child: Text('Feminino')),
                          DropdownMenuItem(
                              value: 2, child: Text('Prefiro não informar')),
                        ],
                        onChanged: (value) {})),
                const FlexComponent(),
              ],
            ),
            const FlexComponent(flex: 3,),
          ],
        ),
      ),
    );
  }
}
