import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'components/animatedBtn.dart';
import 'components/singInForm.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //height: 100,
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset("assets/Backgrounds/Spline.png"),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const SizedBox(
                    width: 260,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50)),
                        Text(
                          "Conoce tus horarios y cuando salir en tu vehiculo",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Poppins",
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                            "Si quieres conocer un poco mas sobre los dias que tienes pico y placa en tus diferentes vehiculos, gestionar tus horarios y planificar tus salidas, esta es la aplicacion que necesitas")
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  AnimatedBtn(
                    btnAnimationController: _btnAnimationController,
                    press: () {
                      _btnAnimationController.isActive = true;
                      showGeneralDialog(
                        barrierDismissible: true,
                        barrierLabel: "Ingresar",
                        context: context,
                        pageBuilder: (context, _, __) => Center(
                          child: Container(
                            height: 620,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 24,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.94),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: const Scaffold(
                              backgroundColor: Colors.transparent,
                              body: Column(
                                children: [
                                  Text(
                                    "Ingresar",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Ingresa a tu cuenta para poder gestionar tus horarios y planificar tus salidas",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SingInForm(),
                                  Row(
                                    children: [
                                      Expanded(child: Divider()),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: Text(
                                          "O ingrese con",
                                          style: TextStyle(
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Divider()),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20,
                                    ),
                                    child: Text("Ingresa con Email o Google",
                                        style:
                                            TextStyle(color: Colors.black54)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                        "Trabajo final desarrollado movil programado por: Joan Nicolas Cifuentes Narvaez, Julian Izasa Gomez y Jose Santiago Pelaez Ramirez"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}