import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/features/profile/presentation/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      appBar: CustomAppbar(
          text: 'Contact us',
          onIconpress: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                   style: const TextStyle(
                   color: Color(0xFF6E7179), 
                 fontSize: 16,
                 fontFamily: 'Inter'
                 ),
                 children: [
                  TextSpan(
                    text: "Don't hesitate to contact us if you find a bug or have a suggestion. "
                      "We highly appreciate any feedback provided, as it helps us improve your "
                  ),
                  TextSpan(
                    text: 'Calorie tracker',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                       color: Color(0xFF0F2C2D),
                    )
                  )
                 ]
                )),
              ),
            SizedBox(height: 50,),

              ContactCard()
            ],
          ),
    );
  }
}
