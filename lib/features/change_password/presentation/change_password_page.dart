import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/change_password/presentation/models/change_password_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({
    super.key,
  });

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final ChangePasswordModel changePasswordModel = ChangePasswordModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Change password'),
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
              Center(
                  child: Text(
                'Please enter your old and new \n       passwords to continue',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              )),
              const SizedBox(height: 150),
              TextFieldWidget(
                hintText: 'Old password',
                icon: Icons.email,
                obscureText: false,
                validator: changePasswordModel.validateOldPassword,
                onSaved: changePasswordModel.saveOldPassword,
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                hintText: "New password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: changePasswordModel.validateNewPassword,
                onSaved: changePasswordModel.saveNewPassword,
              ),
              const SizedBox(height: 16),
              TextFieldWidget(
                hintText: "Repeat new password",
                icon: Icons.lock_outline,
                obscureText: true,
                validator: changePasswordModel.validateRepeatPassword,
                onSaved: changePasswordModel.saveRepeatPassword,
              ),
              SizedBox(height: SizeConfig.defaultSize! * 13),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ButtonWidget(
                  buttonName: 'Change',
                  onPressedfn: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save(); // Save both fields first
                      if (changePasswordModel.newPassword !=
                          changePasswordModel.repeatNewPassword) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Passwords do not match')),
                        );
                        return;
                      }
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
