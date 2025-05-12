import 'package:egycal/core/widgets/custom_appbar.dart';
import 'package:egycal/features/create_avatar/presentation/widgets/avatar_row.dart';
import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        text: 'Create an account',
        onIconpress: () {
          Navigator.pop(context);
        },
        icon: Icons.arrow_back_ios,
      ),
      body:Column(
        children: [
          Center(
            child: Text('Select your avatar',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 22,
              color: Color(0xff000000)
            ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AvatarRow(),
          ),
        ],
      )
    );
  }
}
