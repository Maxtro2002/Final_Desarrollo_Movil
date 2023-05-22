import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rive_animation/models/notifications.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final limitDateController = TextEditingController();
  final paymentDateController = TextEditingController();

  @override
  Void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    limitDateController.dispose();
    paymentDateController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Save the form fields values
      String title = titleController.text;
      String description = descriptionController.text;
      String limitDate = limitDateController.text;
      String paymentDate = paymentDateController.text;

      // Do something with the form fields values
      userNotifications.add(Notification(
          title: title,
          description: description,
          limitDate: limitDate,
          paymentDate: paymentDate));

      // Clear the form fields
      titleController.clear();
      descriptionController.clear();
      limitDateController.clear();
      paymentDateController.clear();
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold();
  }
}
