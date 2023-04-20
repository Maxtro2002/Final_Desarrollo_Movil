import 'package:rive/rive.dart';

class Plate {
  final String carPlateLetter, carPlateNumbers, vehicleTyper, propetary;
  late SMIBool? input;

  Plate(
      {required this.carPlateLetter,
      required this.carPlateNumbers,
      required this.vehicleTyper,
      required this.propetary, this.input});

  set setInput(SMIBool status) {
    input = status;
  }
}

List<Plate> userVehicles = [
  Plate(carPlateLetter: "ABC", carPlateNumbers: "123", vehicleTyper: "Carro", propetary: "Fede"),
  Plate(carPlateLetter: "XYC", carPlateNumbers: "78E", vehicleTyper: "MOTO", propetary: "Yoan"),
  Plate(carPlateLetter: "ASF", carPlateNumbers: "653", vehicleTyper: "Carro", propetary: "Jules")

];