import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/models/user.dart';

import 'package:flutter_delivery/src/models/response_api.dart';
import 'package:flutter_delivery/src/provider/users_provider.dart';
import 'package:flutter_delivery/src/utils/my_snackbar.dart';

class RegisterController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController password2Controller = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();

  // PickedFile pickedFile;
  File imageFile;
  Function refresh;

  // ProgressDialog _progressDialog;

  bool isEnable = true;

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
    String password = passwordController.text.trim();
    String password2 = password2Controller.text.trim();

    if (email.isEmpty ||
        name.isEmpty ||
        lastname.isEmpty ||
        phone.isEmpty ||
        password.isEmpty ||
        password2.isEmpty) {
      MySnackbar.show(context, 'Debes ingresar todos los campos');
      return;
    }

    if (password2 != password) {
      MySnackbar.show(context, 'Las contraseñas no coinciden');
      return;
    }

    if (password.length < 6) {
      MySnackbar.show(
          context, 'Las contraseña debe tener al menos 6 caracteres');
      return;
    }

    if (imageFile == null) {
      MySnackbar.show(context, 'Selecciona una imagen');
      return;
    }

    User user = new User(
        email: email,
        name: name,
        lastname: lastname,
        phone: phone,
        password: password);

    ResponseApi responseApi = await usersProvider.create(user);
    MySnackbar.show(context, responseApi.message);
    print('RESPUESTA: ${responseApi.toJson()}');
  }

  void back() {
    Navigator.pop(context);
  }
}
