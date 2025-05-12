import 'package:egycal/features/gender/presentation/widgets/gender.dart';
import 'package:egycal/features/signUp/presentation/screens/signUp_page2.dart';
import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pagecontroller,
      children: [
        SignUpPage2(),
        Gender(controller: _pagecontroller,),

      ],
    );
  }
}
