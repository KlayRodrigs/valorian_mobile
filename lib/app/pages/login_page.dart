import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';
import 'package:valorian_mobile/app/components/flex_component.dart';
import 'package:valorian_mobile/app/components/gap_component.dart';
import 'package:valorian_mobile/app/services/http_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usuarioController = TextEditingController(text: '');
  TextEditingController senhaController = TextEditingController(text: '');
  bool canSee = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Column(
          children: [
            const FlexComponent(
              flex: 2,
            ),
            Column(
              children: [
                Image.asset('assets/logo.png'),
                const GapComponent(height: 30),
                Text('Seu app de gerenciamento escolar',
                    style: GoogleFonts.aboreto(
                        fontSize: 18,
                        color: AppColors.corBranca,
                        fontWeight: FontWeight.w700))
              ],
            ),
            const GapComponent(height: 40),
            Row(
              children: [
                const FlexComponent(),
                Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                        label: const Text('Usuário',
                            style: TextStyle(fontSize: 18)),
                        filled: true,
                        fillColor: AppColors.corBranca,
                        prefixIcon: const Icon(Icons.person)),
                    controller: usuarioController,
                  ),
                ),
                const FlexComponent(),
              ],
            ),
            const GapComponent(height: 10),
            Row(
              children: [
                const FlexComponent(),
                Expanded(
                  flex: 8,
                  child: TextField(
                    obscureText: canSee,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: canSee
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              canSee = !canSee;
                            });
                          },
                        ),
                        label:
                            const Text('Senha', style: TextStyle(fontSize: 18)),
                        filled: true,
                        fillColor: AppColors.corBranca,
                        prefixIcon: const Icon(Icons.password)),
                    controller: senhaController,
                  ),
                ),
                const FlexComponent(),
              ],
            ),
            const FlexComponent(),
            TextButton(
                onPressed: () {
                  HttpService().get(path: "/api/teacher/list");
                },
                child: Text(
                  "Entrar",
                  style: TextStyle(color: AppColors.corBranca, fontSize: 20),
                )),
            const FlexComponent(
              flex: 2,
            ),
          ],
        ));
  }
}
