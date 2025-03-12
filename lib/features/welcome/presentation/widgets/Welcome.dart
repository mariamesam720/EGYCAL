
import 'package:egycal/features/login/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(
            child: Image.asset('images/Screenshot_2025-02-10_083845-removebg-preview 1.png',
            height: 230,
            width: 230,
            ),
          ),
          SizedBox(height: 2),
          Text('Welcome',
          
          style: TextStyle(
            fontFamily: 'lnter',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),),
          SizedBox(height: 5),
          Text('Start or sign in to your account ',
          style: TextStyle(
            fontFamily: 'lnter',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color(0xFF6E7179)
          ),),
        
          SizedBox(height: 200),
          
             ElevatedButton(onPressed: (){
              Get.to(() => LoginPage());
             }, child:
            Text('Start',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'lnter',
              fontSize: 16,
            ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF337277),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            fixedSize: Size(312, 52),
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12)

            )),
            
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text("don't have an account ? ",
                            style: TextStyle(
                  fontFamily: 'lnter',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF6E7179)
                ),),
              TextButton(onPressed: (){}, child: Text('sign up ', style: TextStyle(
              fontFamily: 'lnter',
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xFF337277),
                        ),)),
                ],
              ),
            
          
        ],
      ),
    ),);
  }
}
