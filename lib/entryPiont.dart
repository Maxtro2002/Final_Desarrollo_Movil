import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation/constants.dart';
import 'package:rive_animation/screens/home/homeScreen.dart';
import 'package:rive_animation/utils/riveUtils.dart';

import 'package:rive_animation/screens/home/AlertScreen.dart';
import 'package:rive_animation/screens/home/NotificationScreen.dart';
import 'package:rive_animation/screens/home/UserScreen.dart';


import 'components/animatedBar.dart';
import 'models/riveAsset.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  RiveAsset selectedButtonNav = bottomNavs.first;
  int _actualPage = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const AlertsScreen(),
    const NotificationsScreen(),
    const UsersScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_actualPage],
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: backgroundColor2.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                bottomNavs.length,
                (index) => GestureDetector(
                  onTap: () {
                    bottomNavs[index].input!.change(true);
                    if (bottomNavs[index] != selectedButtonNav) {
                      setState(() {
                        selectedButtonNav = bottomNavs[index];
                        _actualPage = index;
                      });
                    }
                    Future.delayed(const Duration(seconds: 1), () {
                      bottomNavs[index].input!.change(false);
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedBar(isActive: bottomNavs[index] == selectedButtonNav),
                      SizedBox(
                        height: 36,
                        width: 36,
                        child: Opacity(
                          opacity:
                              bottomNavs[index] == selectedButtonNav ? 1 : 0.5,
                          child: RiveAnimation.asset(
                            bottomNavs.first.src,
                            artboard: bottomNavs[index].artboard,
                            onInit: (artboard) {
                              StateMachineController controller =
                                  RiveUtils.getRiveController(artboard,
                                      stateMachineName:
                                          bottomNavs[index].stateMachineName);
                              bottomNavs[index].input =
                                  controller.findSMI("active") as SMIBool;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}