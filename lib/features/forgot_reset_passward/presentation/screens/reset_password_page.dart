import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/models/forgot_reset_model.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final ResetPasswordModel resetPasswordModel = ResetPasswordModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 55),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
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
                    "Reset Password",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  Spacer(flex: 10),
                ],
              ),
              Spacer(flex: 1,),
              Text(
                "Please enter the password reset code that we have sent to your email,",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF7C7B7B),fontSize: 16),
              ),
              Text(
                '${resetPasswordModel.email}', // Example email
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Pinput(
                length: 6,
                defaultPinTheme: PinTheme(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFC9C8C8)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              SizedBox(height: 20),
            TextFieldWidget(
                hintText: "New Password",
                obscureText: false,
                validator: resetPasswordModel.validateNewPassword,
                onSaved: resetPasswordModel.saveNewPassword,
              ),
              const SizedBox(height: 16),
             TextFieldWidget(
                hintText: "Repeat Password",
                obscureText: false,
                validator: resetPasswordModel.validateRepeatPassword,
                onSaved: resetPasswordModel.saveRepeatPassword,
              ),
          
              Spacer(flex: 3,),
              ButtonWidget(buttonName: 'Reset',onPressedfn: () {
                 if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
              }},),
              Spacer(flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}