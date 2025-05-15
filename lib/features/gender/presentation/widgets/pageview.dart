import 'package:egycal/features/gender/presentation/widgets/gender.dart';
import 'package:egycal/features/sign_up/presentation/models/sign_up_model.dart';
import 'package:egycal/features/sign_up/presentation/screens/sign_up_page2.dart';
import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  final SignUpModel _signUpModel = SignUpModel();
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pagecontroller,
      children: [
        SignUpPage2(signUpModel: _signUpModel),
        Gender(controller: _pagecontroller,),

      ],
    );
  }
}
