import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:valorian_mobile/app/components/flex_component.dart';
import 'package:valorian_mobile/app/store/student_store.dart';

class SecondForm extends StatefulWidget {
  final TextEditingController controller;
  const SecondForm({super.key, required this.controller});

  @override
  State<SecondForm> createState() => _SecondFormState();
}

class _SecondFormState extends State<SecondForm> {
  final DateTime _dateNow = DateTime.now();
  String formattedDate = '';
  StudentStore store = Modular.get();

  String formatter(DateTime value) {
    return formattedDate = DateFormat('dd/MM/yyyy').format(value);
  }

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
              'assets/Balloons2.png',
              height: 350,
            ),
            Row(children: [
              const FlexComponent(),
              Expanded(
                flex: 10,
                child: TextFormField(
                  readOnly: true,
                  controller: widget.controller,
                  decoration: const InputDecoration(
                      filled: true, label: Text('Data de nascimento')),
                  onTap: () async {
                    var dateNow = await showDatePicker(
                        helpText: 'Selecione a data de nascimento',
                        currentDate: _dateNow,
                        context: context,
                        initialDate: _dateNow,
                        firstDate: DateTime(1940, 1, 1),
                        lastDate: _dateNow);
                    if (dateNow != null) {
                      widget.controller.text = formatter(dateNow);
                      store.setDate(widget.controller.text);
                    }
                  },
                ),
              ),
              const FlexComponent(),
            ]),
            const FlexComponent(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
