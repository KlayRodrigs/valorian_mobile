import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';
import 'package:valorian_mobile/app/components/flex_component.dart';

class SplashscreenPage extends StatefulWidget {
  const SplashscreenPage({super.key});

  @override
  State<SplashscreenPage> createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  void navigate() async {
    await Future.delayed(const Duration(seconds: 4));
    Modular.to.navigate('/home/homepage');
  }

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background2Color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlexComponent(
              flex: 2,
            ),
            Image.asset('assets/logo.png'),
            const FlexComponent(
              flex: 3,
            ),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                child: Image.asset(
                  'assets/loading.gif',
                  height: 50,
                )),
            const FlexComponent(),
          ],
        ),
      ),
    );
  }
}
