import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController password1Controller = new TextEditingController();
  TextEditingController password2Controller = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }

  void Register() {
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastname = lastnameController.text;
    String phone = phoneController.text.trim();
    String password1 = password1Controller.text.trim();
    String password2 = password2Controller.text.trim();
  }
}
