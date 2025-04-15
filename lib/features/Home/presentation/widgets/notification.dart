import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {


  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
    int counter = 4;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              icon: Icon(Icons.notifications)),
              
              Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12
                  ),
                )
              
              )
        ],
      ),
    );
  }
}
