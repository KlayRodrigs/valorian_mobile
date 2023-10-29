import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';
import 'package:valorian_mobile/app/pages/add_page/first_form.dart';
import 'package:valorian_mobile/app/pages/add_page/second_form.dart';
import 'package:valorian_mobile/app/pages/add_page/third_form.dart';
import 'package:valorian_mobile/app/services/http_service.dart';
import 'package:valorian_mobile/app/services/toast_message_service.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController sexoController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(text: '');
  bool concluido = false;

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        trailingFunction: () => Modular.to.navigate('/home/homepage'),
        skipFunctionOverride: () => Modular.to.navigate('/home/homepage'),
        skipTextButton:
            Text('Cancelar', style: TextStyle(color: AppColors.corBranca)),
        trailing:
            Text('Cancelar', style: TextStyle(color: AppColors.corBranca)),
        onFinish: () {
          HttpService().get(path: "/api/teacher/list");
          ToastMessageService.toastMessage(
              context,
              'Adicionando',
              AppColors.successColor,
              const Icon(Icons.done),
              '/home/homepage',
              true);
        },
        totalPage: 3,
        headerBackgroundColor: AppColors.background2Color,
        background: const [
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
        speed: 2,
        addButton: true,
        hasFloatingButton: true,
        centerBackground: true,
        finishButtonStyle:
            FinishButtonStyle(backgroundColor: AppColors.blackColor),
        finishButtonText: 'Adicionar',
        pageBackgroundColor: AppColors.background2Color,
        pageBodies: [
          FirstForm(controller: nameController),
          SecondForm(controller: dateController),
          const ThirdForm()
        ]);
  }
}
