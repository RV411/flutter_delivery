import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: -80,
                left: -100,
                child: _circuloLogin(),
              ),
              Positioned(
                top: 60,
                left: 25,
                child: _textLogin(),
              ),
              Column(
                children: [
                  _lottieAnimation(),
                  _textfieldCorreo(),
                  _textfieldContrasena(),
                  _buttonLogin(),
                  _textEnlaces()
                ],
              ),
            ],
          )),
      //   body: Column(
      //     children: [
      //       SizedBox(height: 20),
      //       Text('hola a todos'),
      //       Container(
      //         // margin:EdgeInsets.all(20),
      //         // margin:EdgeInsets.symmetric(horizontal:30,vertical:10),
      //         margin: EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 0),
      //         child: TextField(
      //           decoration: InputDecoration(
      //             hintText: 'Description',
      //           ),
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('CONTINUE...'),
      //       )
      //     ],
      //   ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Text('Hola'),
      //     Text('MUNDO'),
      //     Text('MMMEJORADOOO'),
      //   ],
      // ),
    );
  }

  Widget _lottieAnimation() {
    return Container(
      margin: EdgeInsets.only(
        top: 150,
        bottom: MediaQuery.of(context).size.height *
            0.17, //se deja un margen de 20%
      ),
      child: Lottie.asset(
        'assets/json/delivery.json',
        width: 350,
        height: 200,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _textLogin() {
    return Text(
      'LOGIN',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
        top: 100,
        bottom: MediaQuery.of(context).size.height *
            0.20, //se deja un margen de 20%
      ),
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _textfieldCorreo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Correo Electronico',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark,
          ),
          prefixIcon: Icon(
            Icons.email,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _textfieldContrasena() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Contraseña',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark,
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('INGRESAR'),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }

  Widget _textEnlaces() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(
            color: MyColors.primaryColor,
          ),
        ),
        SizedBox(width: 7),
        Text(
          'REGISTRATE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _circuloLogin() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor,
      ),
    );
  }
}
