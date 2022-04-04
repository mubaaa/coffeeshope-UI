import 'package:flutter/material.dart';

const Color blackk= Color.fromARGB(255, 56, 49, 46);
const Color grey= Color.fromARGB(255, 88, 87, 86);
const Color seeall=Color(0xFFCE7C4);

Ingredients(Color color, IconData icon, String txt,) {
    return Column(children: [
      Container(
        width:50,
        height:50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19), color: color),
        child: Center(
          child: Icon(icon,color: Colors.white,), 
        ),
      ),
     const SizedBox(
        height: 3,
      ),
      Container(
        width: 70,
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: "varala",
              fontWeight: FontWeight.w400,
              color: Colors.grey),
        ),
      ),
    ]
    );
  }

  Information(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text1,
          style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontFamily: "varala",
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          text2,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: "varala",
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ],
    );
  }