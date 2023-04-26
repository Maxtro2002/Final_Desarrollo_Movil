class Notification{
  final String title, desciption, limitDate, paimentDate;

  Notification({
    required this.title,
    required this.desciption,
    required this.limitDate,
    required this.paimentDate,
  });
}

List<Notification> userNotifications = [
  Notification(title: "Pago de Soat", desciption: "Se acerca la fecha del vencimiento de soat", limitDate: "05/05/2023", paimentDate: "05/05/2022"),
  Notification(title: "Tecnicomecanica", desciption: "Se acerca la fecha de pago y verificacion de tecnicomencanica", limitDate: "15/07/2023", paimentDate: "15/07/2022")
];