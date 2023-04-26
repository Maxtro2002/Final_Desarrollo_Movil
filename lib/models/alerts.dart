class Alert{
  final String weekDay, AlertNotification;

  Alert({
    required this.weekDay,
    required this.AlertNotification,
  });
}

List<Alert> userAlerts = [
  Alert(weekDay: "Viernes", AlertNotification: "Recuerde que su vehiculo tiene pico y placa el dia de hoy hasta las 8:00 PM"),
  Alert(weekDay: "Lunes", AlertNotification: "Recuerde que su vehiculo tiene pico y placa el dia de hoy hasta las 8:00 PM"),
];