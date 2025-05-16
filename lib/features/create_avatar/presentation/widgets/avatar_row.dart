import 'package:egycal/features/create_avatar/presentation/widgets/circle_avatar.dart';
import 'package:egycal/features/diary/presentation/widgets/avatar.dart';
import 'package:egycal/features/Home/presentation/widgets/homeView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../goal/models/additional_user_information.dart';

class AvatarRow extends StatelessWidget {
  AdditionalUserInformation additionalUserInformationModel;
  AvatarRow({super.key, required this.additionalUserInformationModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            children: [
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  AvatarImage(
                    image: 'images/Ellipse 8.png',
                    ontap: () {  uploadModel('images/Ellipse 8.png');},
                  ),
                  AvatarImage(
                    image: 'images/Ellipse 9.png',
                    ontap: () { uploadModel('images/Ellipse 9.png');},
                  ),
                  AvatarImage(
                    image: 'images/Ellipse 10.png',
                    ontap: () {  uploadModel('images/Ellipse 10.png');},
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarImage(
                image: 'images/Ellipse 11.png',
                ontap: () {
                  uploadModel('images/Ellipse 11.png');
                },
              ),
              AvatarImage(
                image: 'images/Ellipse 12.png',
                ontap: () {  uploadModel('images/Ellipse 12.png');},
              ),
              AvatarImage(
                image: 'images/Ellipse 13.png',
                ontap: () {  uploadModel('images/Ellipse 13.png');},
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarImage(
                image: 'images/Ellipse 14.png',
                ontap: () {  uploadModel('images/Ellipse 14.png');},
              ),
              AvatarImage(
                image: 'images/Ellipse 15.png',
                ontap: () { uploadModel('images/Ellipse 15.png');},
              ),
              AvatarImage(
                image: 'images/Ellipse 16.png',
                ontap: () {  uploadModel('images/Ellipse 16.png');},
              ),
            ],
          ),
        ],
      ),
    );
  }
  void uploadModel(String image) async {
    additionalUserInformationModel.saveAvatar(image);

    try {
      final auth = FirebaseAuth.instance;
      final firestore = FirebaseFirestore.instance;
      final user = auth.currentUser;

      if (user != null) {
        await firestore.collection('users').doc(user.uid).update({
          'goal': additionalUserInformationModel.goal,
          'activity': additionalUserInformationModel.activity,
          'meter': additionalUserInformationModel.meter,
          'cm': additionalUserInformationModel.cm,
          'weight': additionalUserInformationModel.weight,
          'avatar': additionalUserInformationModel.avatar,
        });
        Get.to(() => Home());
      } else {
        Get.snackbar("Error", "User not authenticated. Please sign in again.");
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to save additional information: ${e.toString()}");
    }
  }
}


