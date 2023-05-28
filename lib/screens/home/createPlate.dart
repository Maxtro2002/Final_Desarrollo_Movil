import 'package:flutter/material.dart';
import 'package:rive_animation/models/placa.dart';


class MyFormPage extends StatefulWidget {
  const MyFormPage({Key? key}) : super(key: key);

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  final carPlateLetterController = TextEditingController();
  final carPlateNumbersController = TextEditingController();
  final vehicleTypeController = TextEditingController();
  final propietaryController = TextEditingController();

  @override
  void dispose() {
    carPlateLetterController.dispose();
    carPlateNumbersController.dispose();
    vehicleTypeController.dispose();
    propietaryController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Save the form fields values
      String carPlateLetter = carPlateLetterController.text;
      String carPlateNumbers = carPlateNumbersController.text;
      String vehicleType = vehicleTypeController.text;
      String propietary = propietaryController.text;

      // Do something with the form fields values
      userVehicles.add(Plate(
          carPlateLetter: carPlateLetter,
          carPlateNumbers: carPlateNumbers,
          vehicleTyper: vehicleType,
          propetary: propietary));


      // Clear the form fields
      carPlateLetterController.clear();
      carPlateNumbersController.clear();
      vehicleTypeController.clear();
      propietaryController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Una nueva placa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: carPlateLetterController,
                decoration: const InputDecoration(
                  labelText: 'Letras de la placa',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese las letras de la placa';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: carPlateNumbersController,
                decoration: const InputDecoration(
                  labelText: 'Numeros de la placa',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese los numeros de la placa';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: vehicleTypeController,
                decoration: const InputDecoration(
                  labelText: 'Tipo de vehiculo',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese el tipo de vehiculo';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: propietaryController,
                decoration: const InputDecoration(
                  labelText: 'Propietario',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese el nombre del propietario';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Crear placa'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
