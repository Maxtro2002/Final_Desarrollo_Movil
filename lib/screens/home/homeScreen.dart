import 'package:flutter/material.dart';
import 'package:rive_animation/models/placa.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Informacion",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ...List.generate(
                      userVehicles.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            color: Colors.amberAccent,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 8,
                              ),
                              color: Colors.amberAccent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Placa:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                    children: [
                                      TextSpan(
                                        text:
                                            "${userVehicles[index].carPlateLetter}-${userVehicles[index].carPlateNumbers}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30),
                                      ),
                                      TextSpan(
                                        text:
                                            "\nPropietario: ${userVehicles[index].propetary}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(
                                                color: Colors.black26,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15),
                                      ),
                                      TextSpan(
                                        text:
                                            "\nTipo de vehiculo: ${userVehicles[index].vehicleTyper}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(
                                                color: Colors.black26,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
