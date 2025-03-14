import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/models/forgot_reset_model.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/screens/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' show Get, GetNavigation;

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final ResetPasswordModel resetPasswordModel = ResetPasswordModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 55),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Spacer(flex: 8),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  Spacer(flex: 10),
                ],
              ),
              Spacer(flex: 2),
              Text(
                "We will send a password reset code to your email account.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF7C7B7B)),
              ),
              SizedBox(height: 24.0),
              TextFieldWidget(
                hintText: "Email",
                icon: Icons.email_outlined,
                obscureText: false,
                validator: resetPasswordModel.validateEmail,
                onSaved: resetPasswordModel.saveEmail,
              ),
              Spacer(flex: 2),
              Center(
                child: ButtonWidget(
                  buttonName: 'Send Code',
                  onPressedfn: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Get.to(() => ResetPasswordPage());
                    }
                  },
                ),
              ),

              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}