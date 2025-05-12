import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/models/forgot_reset_model.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/screens/reset_password_page.dart';
import 'package:flutter/gestures.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Forgot Password'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Form(
          key: _formKey,
          child: ListView(
            dragStartBehavior: DragStartBehavior.start,
            children: <Widget>[
              SizedBox(height: SizeConfig.defaultSize! * 19),
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
              SizedBox(height: SizeConfig.defaultSize! * 20),
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
            ],
          ),
        ),
      ),
    );
  }
}
