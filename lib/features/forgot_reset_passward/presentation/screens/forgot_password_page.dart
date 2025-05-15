import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/models/forgot_reset_model.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/screens/reset_password_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' show ExtensionSnackbar, Get, GetNavigation, SnackPosition, SnackbarStatus;
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final ResetPasswordModel resetPasswordModel = ResetPasswordModel();
  final TextEditingController emailController = TextEditingController();
  bool _isLoading = false;

  Future<void> _sendPasswordResetEmail() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    setState(() {
      _isLoading = true;
    });

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: resetPasswordModel.email!);
      Get.snackbar(
        'Success',
        'Password reset email sent to ${resetPasswordModel.email}. Please check your inbox.',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 5),
      );
    } on FirebaseAuthException catch (e) {
      String message = 'An error occurred. Please try again.';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'invalid-email') {
        message = 'The email address is not valid.';
      }
      Get.snackbar(
        'Error',
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'An unexpected error occurred. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

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
          onPressed: () => _isLoading ? null : Get.back(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 60.0),
            dragStartBehavior: DragStartBehavior.start,
            children: <Widget>[
              SizedBox(height: SizeConfig.defaultSize! * 10),
              const Text(
                "Enter your email address below and we will send you a link to reset your password.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF7C7B7B)),
              ),
              const SizedBox(height: 24.0),
              TextFieldWidget(
                textEditingController: emailController,
                hintText: "Email",
                icon: Icons.email_outlined,
                obscureText: false,
                validator: resetPasswordModel.validateEmail,
                onSaved: (value) => resetPasswordModel.email = value,
                onChanged: (value) => resetPasswordModel.email = value,
              ),
              SizedBox(height: SizeConfig.defaultSize! * 5),
              Center(
                child: _isLoading
                    ? const CircularProgressIndicator()
                    : ButtonWidget(
                        buttonName: 'Send Reset Email',
                        onPressedfn: _sendPasswordResetEmail,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
