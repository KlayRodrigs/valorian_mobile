import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';
import 'package:valorian_mobile/app/components/flex_component.dart';
import 'package:valorian_mobile/app/components/sidebar_component.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Theme(
        data: ThemeData(
          primaryIconTheme: IconThemeData(color: AppColors.corBranca),
        ),
        child: Scaffold(
          backgroundColor: AppColors.background2Color,
          appBar: AppBar(
              elevation: 0,
              title: Text(
                'Home',
                style: TextStyle(color: AppColors.corBranca),
              ),
              backgroundColor: AppColors.background2Color),
          body: Center(
            child: Column(
              children: [
                const FlexComponent(),
                Expanded(
                    flex: 3, child: LottieBuilder.asset('assets/home.json')),
                const FlexComponent(
                  flex: 2,
                ),
              ],
            ),
          ),
          drawer: SidebarComponent(
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
