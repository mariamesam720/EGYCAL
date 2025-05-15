import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/Home/presentation/widgets/home.dart';
import 'package:egycal/features/change_password/presentation/change_password_page.dart';
import 'package:egycal/features/diary/presentation/diary_page.dart';
import 'package:egycal/features/forgot_reset_passward/presentation/screens/forgot_password_page.dart';
import 'package:egycal/features/login/presentation/models/login_model.dart';
import 'package:egycal/features/sign_up/presentation/screens/sign_up_page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final LoginModel loginModel = LoginModel();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _loginUser() async {
    try {
      final auth = FirebaseAuth.instance;
      await auth.signInWithEmailAndPassword(
        email: loginModel.email!,
        password: loginModel.password!,
      );
      Get.offAll(() => const Home()); // Use offAll to remove previous routes
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      } else {
        message = e.message ?? 'Authentication failed';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Something went wrong')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Row(
                children: [
                  Spacer(flex: 1),
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              const Spacer(flex: 3),
              TextFieldWidget(
                textEditingController: emailController,
                hintText: "Email",
                icon: Icons.email_outlined,
                obscureText: false,
                validator: loginModel.validateEmail,
                onChanged: (value) => loginModel.email = value,
                onSaved: (value) => loginModel.email = value, // Ensure email is saved
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                textEditingController: passwordController,
                hintText: "Password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: loginModel.validatePassword,
                onChanged: (value) => loginModel.password = value,
                onSaved: (value) => loginModel.password = value, // Ensure password is saved
              ),
              const Spacer(flex: 2),
              ButtonWidget(
                  buttonName: 'Login',
                  onPressedfn: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      _loginUser();
                    }
                  }),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Get.to(() => const ForgotPasswordPage());
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(fontSize: 16, color: Color(0xFF2F6F72)),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SignUpPage());
                },
                child: RichText(
                  text: const TextSpan(
                    text: "Don\'t have an account? ",
                    style: TextStyle(
                        fontFamily: 'lnter',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF6E7179)),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(color: Color(0xFF2F6F72)),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
