import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/login/presentation/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final LoginModel loginModel = LoginModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),

        child: Form(
          key: _formKey,
          child: Column(
            
            children: [
              Row(
                children: [
                  Spacer(flex: 1),
                  const Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Spacer(flex: 3),
              TextFieldWidget(
                hintText: "Email",
                icon: Icons.email_outlined,
                obscureText: false,
                validator: loginModel.validateEmail,
                onSaved: loginModel.saveEmail,
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                hintText: "Password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: loginModel.validatePassword,
                onSaved: loginModel.saveEmail,
              ),
          
              Spacer(flex: 2),
              ButtonWidget(buttonName: 'Login', onPressedfn: () {
                if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print(
                          'Logging in with ${loginModel.email} and ${loginModel.password}',
                        );
                        // Navigate to another page or perform login logic
                      }}),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return ForgotPasswordPage();
                  //     },
                  //   ),
                  // );
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(fontSize: 15, color: Color(0xFF2F6F72)),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return SignUpPage();
                  //     },
                  //   ),
                  // );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(color: Color(0xFF2F6F72)),
                      ),
                    ],
                  ),
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