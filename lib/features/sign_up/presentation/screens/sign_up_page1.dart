import 'package:egycal/core/utilis/size_config.dart';
import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/core/widgets/custom_textfield.dart';
import 'package:egycal/features/sign_up/presentation/models/sign_up_model.dart';
import 'package:egycal/features/sign_up/presentation/screens/sign_up_page2.dart';
import 'package:egycal/features/sign_up/presentation/models/sign_up_model.dart';
import 'package:egycal/features/sign_up/presentation/screens/sign_up_page2.dart';
import 'package:egycal/features/sign_up/presentation/widgets/custom_dropdown.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Form(
          key: _formKey,
          child: ListView(
            dragStartBehavior: DragStartBehavior.start,
            children: [
              SizedBox(height: 80,),
              TextFieldWidget(
                hintText: 'First name',
                obscureText: false,
                validator: signUpModel.validateFirstName,
                onSaved: signUpModel.saveFirstName,
              ),
              const SizedBox(height: 20),
              TextFieldWidget(
                hintText: "Second name",
                obscureText: false,
                validator: signUpModel.validateSecondName,
                onSaved: signUpModel.saveSecondName,
              ),

              SizedBox(height: 40,),
              const Text(
                "Date of birth",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start, // Ensures full width
                children: [
                  CustomDropdown(
                    value: signUpModel.day,
                    labelText: 'Day',
                    items: signUpModel.days,
                     validator: signUpModel.validateDay,
                    
                    onChanged: (value) {
                      setState(() {
                        signUpModel.day = value;
                      });
                    },
                  ),
                  CustomDropdown(
                    value: signUpModel.month,
                    labelText: 'Month',
                    items: signUpModel.months,
                     validator: signUpModel.validateMonth,
                   
                    onChanged: (value) {
                      setState(() {
                        signUpModel.month = value;
                      });
                    },
                  ),
                  CustomDropdown(
                    value: signUpModel.year,
                    labelText: 'Year',
                    items: signUpModel.years,
                    validator: signUpModel.validateYear,
                  
                    onChanged: (value) {
                      setState(() {
                        signUpModel.year = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.defaultSize! * 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ButtonWidget(
                  buttonName: 'Next',
                  onPressedfn: () {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      PageController pageController = PageController();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpPage2();
                          },
                        ),
                      ); // Go back to the login page
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