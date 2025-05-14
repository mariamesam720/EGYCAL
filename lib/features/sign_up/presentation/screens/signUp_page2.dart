import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/gender/presentation/widgets/gender.dart';
import 'package:egycal/features/sign_up/presentation/models/sign_up_model.dart';
import 'package:egycal/features/sign_up/presentation/models/sign_up_model.dart';
import 'package:egycal/features/diary/presentation/diary_page.dart';
import 'package:egycal/features/goal/presentation/widgets/goal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({super.key});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  final _formKey = GlobalKey<FormState>();
  final SignUpModel signUpModel = SignUpModel();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Create an account'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView(
            children: [
              const SizedBox(height: 150),
              TextFieldWidget(
                textEditingController: emailController,
                hintText: 'Email',
                icon: Icons.email,
                obscureText: false,
                validator: signUpModel.validateEmail,
                onSaved: signUpModel.saveEmail,
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                textEditingController: passwordController,
                hintText: "Password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: signUpModel.validatePassword,
                onSaved: signUpModel.savePassword,
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                textEditingController: repeatPasswordController,
                hintText: "Repeat password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: signUpModel.validateRepeatPassword,
                onSaved: signUpModel.saveRepeatPassword,
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ButtonWidget(
                  buttonName: 'Sign up',
                  onPressedfn: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save(); // Save both fields first
                      if (signUpModel.password != signUpModel.repeatPassword) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Passwords do not match')),
                        );
                        return;
                      }
                      Get.to(Goal());
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
