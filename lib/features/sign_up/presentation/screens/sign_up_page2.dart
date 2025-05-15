import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/sign_up/presentation/models/sign_up_model.dart';
import 'package:egycal/features/goal/presentation/widgets/goal.dart';

class SignUpPage2 extends StatefulWidget {
  final SignUpModel signUpModel;

  const SignUpPage2({super.key, required this.signUpModel});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  Future<void> _registerUser() async {
    try {
      final auth = FirebaseAuth.instance;
      final firestore = FirebaseFirestore.instance;

      final userCredential = await auth.createUserWithEmailAndPassword(
        email: widget.signUpModel.email!,
        password: widget.signUpModel.password!,
      );

      await firestore.collection('users').doc(userCredential.user!.uid).set({
        'firstName': widget.signUpModel.firstName,
        'secondName': widget.signUpModel.secondName,
        'email': widget.signUpModel.email,
        'birthDay': widget.signUpModel.day,
        'birthMonth': widget.signUpModel.month,
        'birthYear': widget.signUpModel.year,
        'createdAt': Timestamp.now(),
      });

      Get.to(() => Goal());

    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Authentication failed')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Something went wrong')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final signUpModel = widget.signUpModel;

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
                      _formKey.currentState!.save();

                      if (signUpModel.password != signUpModel.repeatPassword) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Passwords do not match')),
                        );
                        return;
                      }
                      _registerUser();
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
