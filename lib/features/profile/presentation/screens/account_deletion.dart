import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/core/widgets/custom_outlined_button.dart';
import 'package:egycal/core/widgets/custom_text.dart';
import 'package:egycal/features/profile/presentation/provider/acc_delete_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountDeletion extends StatelessWidget {
  const AccountDeletion({super.key});

  @override
  Widget build(BuildContext context) {
    final accDeleteProvider = Provider.of<AccDeleteProvider>(context);
    return Scaffold(
      appBar: CustomAppbar(
          text: 'Account deletion',
          onIconpress: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: CustomText(
                  tittle: 'Are you sure you want to \n delete your account ?',
                  description: ''),
            ),
            SizedBox(height: 40,),
            CustomOutlinedButton(
             text: 'Yes',
             isSelected: accDeleteProvider.isSelected(AccDeleteProvider.yesChoice),
             onTap: ()=>accDeleteProvider.setChoice(AccDeleteProvider.yesChoice)),
             SizedBox(height: 20,),
            CustomOutlinedButton(text: 'NO', 
            isSelected: accDeleteProvider.isSelected(AccDeleteProvider.noChoice),
            onTap: ()=>accDeleteProvider.setChoice(AccDeleteProvider.noChoice )),
          ],
        ),
      ),
    );
  }
}
