import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_firetask/models/user_model.dart';
import 'package:flutter_codigo_firetask/pages/home_page.dart';
import 'package:flutter_codigo_firetask/services/my_service_firestore.dart';
import 'package:flutter_codigo_firetask/ui/general/colors.dart';
import 'package:flutter_codigo_firetask/ui/widgets/button_custom_widget.dart';
import 'package:flutter_codigo_firetask/ui/widgets/general_widgets.dart';
import 'package:flutter_codigo_firetask/ui/widgets/textfield_normal_widget.dart';
import 'package:flutter_codigo_firetask/ui/widgets/textfield_password_widget.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final keyForm = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();

  MyServiceFirestore userService = MyServiceFirestore(collection: "users");

  _registerUser() async {
    try {
      if (keyForm.currentState!.validate()) {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        UserModel userModel = UserModel(
          fullName: _fullNameController.text,
          email: _emailController.text,
        );
        userService.addUser(userModel).then((value) {
          //
          if (value.isNotEmpty) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                (route) => false);
          }
        });
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == "weak-password") {
        //
        showSnackBarError(context, "La contraseña es muy debil");
      } else if (error.code == "email-already-in-use") {
        //
        showSnackBarError(
            context, "El correo electrónico ya está siendo usado ");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: keyForm,
            child: Column(
              children: [
                divider30(),
                SvgPicture.asset(
                  "assets/images/register.svg",
                  height: 180.0,
                ),
                divider30(),
                Text(
                  "Regístrate",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: kBrandPrymaryColor,
                  ),
                ),
                divider20(),
                TextFieldNormalWidget(
                  hintText: "Nombre completo",
                  icon: Icons.email,
                  controller: _fullNameController,
                ),
                divider10(),
                divider6(),
                TextFieldNormalWidget(
                  hintText: "Correo electrónico",
                  icon: Icons.email,
                  controller: _emailController,
                ),
                divider10(),
                divider6(),
                TextFieldPasswordWidget(
                  controller: _passwordController,
                ),
                divider20(),
                ButtonCustomWidget(
                  text: "Regístrate ahora",
                  color: kBrandPrymaryColor,
                  icon: "check",
                  onPressed: () {
                    _registerUser();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
