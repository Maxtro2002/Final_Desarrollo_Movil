import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_animation/screens/onboding/components/singInForm.dart';

Future<Object?> CustomSingInDialog(BuildContext context, {required ValueChanged onClosed}) {
    return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Ingresar",
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (_, animation, __, child) {
        Tween<Offset> tween;
        tween = Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        );
        return SlideTransition(
          position: tween.animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          ),
          child: child,
        );
      },
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
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    const Text(
                      "Ingresar",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Ingresa a tu cuenta para poder gestionar tus horarios y planificar tus salidas",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SingInForm(),
                    const Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                      ),
                      child: Text("Ingresa con Email o Google",
                          style: TextStyle(color: Colors.black54)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/email_box.svg",
                              height: 64, width: 64),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/google_box.svg",
                              height: 64, width: 64),
                        ),
                      ],
                    )
                  ],
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: -40,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ).then(onClosed);
  }