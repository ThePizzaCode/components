import 'package:flutter/material.dart';

class Pladic extends StatelessWidget {
  final IconData iconn;
  final Color iconColor;
  final String numeloc;
  final String adresa;
  final Color circleColor;

  Pladic({
    required this.iconn,
    required this.numeloc,
    required this.adresa,
    required this.circleColor,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Icon inside a circular background
        Container(
          margin: EdgeInsets.only(left: 14, top: 27),
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor,
          ),
          child: Icon(
            iconn,
            color: iconColor,
            size: 25,
          ),
        ),
       
        SizedBox(width: 12), // Spacing between icon and text
        
        // Column for location name and address
        Container(
          margin: EdgeInsets.only(top: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                numeloc,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'UberMoveBold',
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              Text(
                adresa,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'UberMoveMedium',
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
