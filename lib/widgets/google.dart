// ignore: file_names
// ignore_for_file: use_build_context_synchronously

import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive_animation/screens/home/homeScreen.dart';
import 'package:flutter/material.dart';

import 'package:rive_animation/services/firebase_services.dart';


// ignore: camel_case_types
class botonGoogle extends StatelessWidget {
  const botonGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: FirebaseService.firebaseIni(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await FirebaseService.signInWithGoogle();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.white,
                  ),
                  child: SvgPicture.asset("assets/icons/google.svg"),
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}