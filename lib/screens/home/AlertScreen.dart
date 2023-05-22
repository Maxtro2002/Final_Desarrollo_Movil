import 'package:flutter/material.dart';
import 'package:rive_animation/models/alerts.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SafeArea(
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Alertas",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ...List.generate(
                        userAlerts.length,
                        (index) => Container(
                          padding: EdgeInsets.all(12),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              color: Colors.lightGreen.shade200,
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  text: TextSpan(
                                    text: "Alerta:\n",
                                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                        ),
                                    children: [
                                      TextSpan(
                                        text: userAlerts[index].alertNotification,
                                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 20,
                                            ),
                                      ),
                                      TextSpan(
                                        text: " PARA EL DIA ${userAlerts[index].weekDay}",
                                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                              color: Colors.red,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: FloatingActionButton(
            onPressed: () {
              // Acción al presionar el botón
              print('Botón presionado');
            },
            backgroundColor: Colors.green, // Color del botón
            child: Icon(Icons.add),
          ),
        ),
      ],
    ),
  ),
);

  }
}
