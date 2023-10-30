import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';
import 'package:valorian_mobile/app/models/student_model.dart';
import 'package:valorian_mobile/app/pages/add_page/first_form.dart';
import 'package:valorian_mobile/app/pages/add_page/second_form.dart';
import 'package:valorian_mobile/app/pages/add_page/third_form.dart';
import 'package:valorian_mobile/app/services/http_service.dart';
import 'package:valorian_mobile/app/utils/toast_message_service.dart';
import 'package:valorian_mobile/app/store/student_store.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController genderController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(text: '');
  StudentStore store = Modular.get();
  bool concluido = false;

  void reset() {
    store.setName("");
    store.setDate("");
    store.setGender("");
  }

  @override
  Widget build(BuildContext context) {
    StudentStore store = Modular.get();
    return OnBoardingSlider(
        trailingFunction: () => Modular.to.navigate('/home/homepage'),
        skipFunctionOverride: () => Modular.to.navigate('/home/homepage'),
        skipTextButton:
            Text('Cancelar', style: TextStyle(color: AppColors.corBranca)),
        trailing:
            Text('Cancelar', style: TextStyle(color: AppColors.corBranca)),
        onFinish: () {
          if (store.name == "" || store.name.length < 4) {
            return ToastMessageService.toastMessage(
                context,
                "Insira um nome válido",
                AppColors.errorColor,
                const Icon(Icons.error),
                "",
                false);
          }
          if (store.date == "") {
            return ToastMessageService.toastMessage(context, "Data inválida",
                AppColors.errorColor, const Icon(Icons.error), "", false);
          }
          if (store.gender != "Feminino" &&
              store.gender != "Masculino" &&
              store.gender != "Prefiro não informar") {
            return ToastMessageService.toastMessage(
                context,
                "Adicione um gênero",
                AppColors.errorColor,
                const Icon(Icons.error),
                "",
                false);
          }
          //  HttpService().get(path: "/api/teacher/list");
          HttpService().post(
              path: "/api/teacher/add",
              data: StudentModel(
                      studentName: store.name,
                      studentAge: store.date,
                      studentGender: store.gender)
                  .toMap());
          // HttpService().delete(path:"/api/teacher/delete/", id: "19");
          // HttpService().put(path: "/api/teacher/update/", id: "18", data:
          // StudentModel(
          //         studentName: store.name,
          //         studentAge: store.date,
          //         studentGender: store.gender).toMap());

          ToastMessageService.toastMessage(
              context,
              'Adicionando',
              AppColors.successColor,
              const Icon(Icons.done),
              '/home/homepage',
              true);

          reset();
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
          ThirdForm(
            controller: genderController,
          )
        ]);
  }
}
