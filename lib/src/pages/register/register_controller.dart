import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/models/user.dart';

import 'package:flutter_delivery/src/models/response_api.dart';
import 'package:flutter_delivery/src/provider/users_provider.dart';

class RegisterController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController password1Controller = new TextEditingController();
  TextEditingController password2Controller = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();

  Future init(BuildContext context) {
    this.context = context;
    usersProvider.init(context);
  }

  void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }

  void Register() async {
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastname = lastnameController.text;
    String phone = phoneController.text.trim();
    String password1 = password1Controller.text.trim();
    String password2 = password2Controller.text.trim();

    User user = new User(
        email: email,
        name: name,
        lastname: lastname,
        phone: phone,
        password: password1);

    ResponseApi responseApi = await usersProvider.create(user);
    print('RESPUESTA: ${responseApi.toJson()}');
  }
}
