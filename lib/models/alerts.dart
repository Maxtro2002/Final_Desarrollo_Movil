class Alert{
  final String weekDay, alertNotification;

  Alert({
    required this.weekDay,
    required this.alertNotification,
  });
}

List<Alert> userAlerts = [
  Alert(weekDay: "Viernes", alertNotification: "Recuerde que su vehiculo tiene pico y placa el dia de hoy hasta las 8:00 PM"),
  Alert(weekDay: "Lunes", alertNotification: "Recuerde que su vehiculo tiene pico y placa el dia de hoy hasta las 8:00 PM"),
];