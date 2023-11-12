import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/camera_screen.dart';

//TODO: make this code less awful and replace all of it lolz

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 430,
    height: 932,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(color: Colors.white),
    child: Stack(
        children: [
            Positioned(
                left: 14.03,
                top: 54,
                child: Container(
                    width: 400.94,
                    height: 57,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/401x57"),
                            fit: BoxFit.fill,
                        ),
                        boxShadow: [
                            BoxShadow(
                                color: Color(0x72000000),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 430,
                    height: 71,
                    decoration: BoxDecoration(color: Color(0xFF998080)),
                ),
            ),
            Positioned(
                left: 0,
                top: 862,
                child: Container(
                    width: 430,
                    height: 71,
                    decoration: BoxDecoration(color: Color(0xFF998080)),
                ),
            ),
            Positioned(
                left: 133,
                top: 0,
                child: Container(
                    width: 153,
                    height: 71,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/153x71"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 64,
                top: 62,
                child: SizedBox(
                    width: 291,
                    height: 40,
                    child: Text(
                        'Recent Meals',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 64,
                top: 62,
                child: SizedBox(
                    width: 291,
                    height: 40,
                    child: Text(
                        'Recent Meals',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 368,
                top: 12,
                child: Container(
                    width: 47,
                    height: 47,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/47x47"),
                            fit: BoxFit.fill,
                        ),
                        boxShadow: [
                            BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 24,
                top: 132,
                child: Container(
                    width: 382,
                    height: 173,
                    decoration: BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
            ),
            Positioned(
                left: 24,
                top: 308,
                child: Container(
                    width: 382,
                    height: 173,
                    decoration: BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
            ),
            Positioned(
                left: 24,
                top: 484,
                child: Container(
                    width: 382,
                    height: 173,
                    decoration: BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
            ),
            Positioned(
                left: 24,
                top: 660,
                child: Container(
                    width: 382,
                    height: 173,
                    decoration: BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
            ),
            Positioned(
                left: 37,
                top: 155,
                child: Container(
                    width: 159,
                    height: 127,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/159x127"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 37,
                top: 331,
                child: Container(
                    width: 159,
                    height: 127,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/159x127"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 37,
                top: 507,
                child: Container(
                    width: 159,
                    height: 127,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/159x127"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 37,
                top: 683,
                child: Container(
                    width: 159,
                    height: 127,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/159x127"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 196,
                top: 135,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Pasta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 196,
                top: 311,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Pasta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 196,
                top: 487,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Pasta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 196,
                top: 663,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Pasta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 168,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Calories: 620',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 344,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Calories: 620',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 520,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Calories: 620',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 696,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Calories: 620',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 199,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Protein: 5g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 375,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Protein: 5g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 551,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Protein: 5g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 727,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Protein: 5g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 230,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Carbs: 20g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 406,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Carbs: 20g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 582,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Carbs: 20g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 758,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Carbs: 20g',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 150,
                top: 838,
                child: Container(
                    width: 119,
                    height: 119,
                    decoration: ShapeDecoration(
                        color: Color(0xFF998080),
                        shape: OvalBorder(),
                    ),
                ),
            ),
            Positioned(
                left: 174,
                top: 855,
                child: Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/72x72"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 12,
                top: 13,
                child: Text(
                    '🔍',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 49,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                    ),
                ),
            ),
        ],
    ),
)
  }
}
