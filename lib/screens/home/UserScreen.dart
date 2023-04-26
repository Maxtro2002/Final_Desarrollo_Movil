import 'package:flutter/material.dart';
import 'package:rive_animation/models/user.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Informacion usuario",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  ...List.generate(
                    tempUsers.length,
                    (index) => Container(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: RichText(
                              text: TextSpan(
                                text: "Nombre:\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                children: [
                                  TextSpan(
                                    text: tempUsers[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                  ),
                                  TextSpan(
                                    text: "\nCorreo:\n",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                  ),
                                  TextSpan(
                                    text: tempUsers[index].email,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                  ),
                                  TextSpan(
                                    text: "\nTelefono:\n",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                  ),
                                  TextSpan(
                                    text: tempUsers[index].phone,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                  ),
                                  TextSpan(
                                    text: "\nDireccion:\n",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                  ),
                                  TextSpan(
                                    text: tempUsers[index].address,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
