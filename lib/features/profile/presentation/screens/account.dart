import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/core/widgets/custom_elev_button.dart';
import 'package:egycal/features/create_avatar/presentation/widgets/circlea_avatar.dart';
import 'package:egycal/features/profile/presentation/screens/account_deletion.dart';
import 'package:egycal/features/profile/presentation/widgets/icon.dart';
import 'package:egycal/features/profile/presentation/widgets/red_icon.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          text: 'Account',
          onIconpress: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Center(
                child: avatarimg(
              image: 'images/Ellipse 11.png', ontap: () {  },
            )),
            SizedBox(height: 10,),
            Text(
              'Ahmed@gmail.com',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            //divider
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconName(
                    icon: Icons.person_outline, onpress: () {}, tittle: 'Name',),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Ahmed',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
            //divider
            SizedBox(height: 10,),
            Container(color: Colors.black, width: 350,height: 1,),
            SizedBox(height: 10,),

            //icons
            IconName(
                icon: Icons.lock_reset_rounded,
                
                onpress: () {
                  
                }, tittle: 'change password', ),
            RedIcon(icon1: Icons.logout_outlined, name: 'Logout', onpressed: () {  },),
            RedIcon(icon1: Icons.delete_outlined, name: 'Delete Account', 
            onpressed: () {  
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => AccountDeletion()));
            },),
            
        
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ButtonWidget(buttonName: 'Save', onPressedfn: (){}),
      )
 ,
    );
  }
}

