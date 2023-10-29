import 'package:flutter/material.dart';
import 'package:valorian_mobile/app/components/flex_component.dart';

class FirstForm extends StatelessWidget {
  final TextEditingController controller;
  const FirstForm({super.key, required this.controller});

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
              'assets/documents2.png',
              height: 350,
            ),
            Row(
              children: [
                const FlexComponent(),
                Expanded(
                    flex: 10,
                    child: TextField(
                      autofocus: false,
                      controller: controller,
                      decoration: const InputDecoration(
                        label: Text('Nome do estudante'),
                        filled: true,
                      ),
                      onTap: () {},
                    )),
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
