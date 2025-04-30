import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/signUp/presentation/models/signUp_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage2 extends StatelessWidget {
  SignUpPage2({super.key});
  final _formKey = GlobalKey<FormState>();
  final SignUpModel signUpModel = SignUpModel();
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
              // Row(
              //   children: [
              //     IconButton(
              //       icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              //       onPressed: () {
              //         Navigator.pop(context);
              //       },
              //     ),
              //     Spacer(flex: 8),
              //     const Text(
              //       "Create an account",
              //       style: TextStyle(color: Colors.black, fontSize: 22),
              //     ),
              //     Spacer(flex: 10),
              //   ],
              // ),
              
              SizedBox(height: 150,),
              TextFieldWidget(
                hintText: 'Email',
                icon: Icons.email,
                obscureText: false,
                validator: signUpModel.validateEmail,
                onSaved: signUpModel.saveEmail,
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                hintText: "Password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: signUpModel.validatePassword,
                onSaved: signUpModel.savePassword,
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                hintText: "Repeat password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: signUpModel.validateRepeatPassword,
                onSaved: signUpModel.saveRepeatPassword,
              ),

              SizedBox(height: SizeConfig.defaultSize! * 16.5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ButtonWidget(
                  buttonName: 'Sign up',
                  onPressedfn: () {
                     if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
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