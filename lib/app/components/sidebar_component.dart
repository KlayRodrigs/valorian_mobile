import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';

class SidebarComponent extends StatelessWidget {
  final SidebarXController controller;
  const SidebarComponent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      animationDuration: const Duration(milliseconds: 300),
      headerDivider:
          Divider(color: AppColors.corBranca.withOpacity(0.3), height: 1),
      theme: SidebarXTheme(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(20)),
        ),
        hoverColor: AppColors.backgroundColor,
        textStyle: TextStyle(color: AppColors.corBranca.withOpacity(0.7)),
        selectedTextStyle: TextStyle(color: AppColors.corBranca),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          color: AppColors.successColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.backgroundColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.backgroundColor.withOpacity(0.37),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 1,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: AppColors.corBranca.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.corBranca,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 220,
        decoration: BoxDecoration(
          color: AppColors.background2Color,
        ),
      ),
      footerDivider:
          Divider(color: AppColors.corBranca.withOpacity(0.3), height: 1),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/logo.png'),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.person_add,
          label: 'Adicionar aluno',
          onTap: () async {
            await Future.delayed(const Duration(milliseconds: 100));
            Modular.to.navigate('/home/add');
          },
        ),
        SidebarXItem(
            icon: Icons.person_search_rounded,
            label: 'Listar Alunos',
            onTap: () async {
              await Future.delayed(const Duration(milliseconds: 100));
              Modular.to.navigate('/home/list');
            }),
        SidebarXItem(icon: Icons.edit, label: 'Editar aluno', onTap: () {}),
        SidebarXItem(
            icon: Icons.person_off_sharp, label: 'Remover aluno', onTap: () {}),
      ],
    );
  }
}
