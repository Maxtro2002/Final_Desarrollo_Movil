import 'package:flutter/material.dart';
import 'package:rive_animation/entryPiont.dart';
import 'package:rive_animation/models/notifications.dart';
import 'package:rive_animation/screens/home/createPlate.dart';
import 'package:rive_animation/screens/onboding/onboding_screen.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
                      "Notificaciones",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          ...List.generate(
                            userNotifications.length,
                            (index) => ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text(
                                          'Seguro que desea eliminar la notificación?'),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            userNotifications.removeAt(index);
                                            Navigator.pop(context);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const EntryPoint()),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    "Se elimino correctamente la notificación"),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                          ),
                                          child: const Text('Eliminar'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Cancelar'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                ;
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    color: Colors.lightGreen.shade200,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "${userNotifications[index].title}: ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                              ),
                                          children: [
                                            TextSpan(
                                              text: userNotifications[index]
                                                  .desciption,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  "\n\nFecha límite de pago: ${userNotifications[index].limitDate}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  "\nFecha de pago anterior: ${userNotifications[index].paimentDate}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
                child: const Icon(Icons.add),
                backgroundColor: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnboardingScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Icon(Icons.exit_to_app_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
