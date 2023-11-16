import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/camera_screen.dart';

//this is currently being used as the home page however it
//will be modified by Brady

class searchScreen extends StatelessWidget {
  const searchScreen({Key? key}) : super(key: key);

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
                        'Food?',
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
                left: 45,
                top: 139,
                child: Container(
                    width: 339.50,
                    height: 53.17,
                    padding: const EdgeInsets.all(14.77),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 3,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFF998080),
                            ),
                            borderRadius: BorderRadius.circular(9.85),
                        ),
                        shadows: [
                            BoxShadow(
                                color: Color(0x11000000),
                                blurRadius: 33.52,
                                offset: Offset(0, 18.05),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                                '🍇 Search for food...',
                                style: TextStyle(
                                    color: Color(0xFF2A1010),
                                    fontSize: 24,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 37,
                top: 231,
                child: Text(
                    'Ingrdients',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 37,
                top: 489,
                child: Text(
                    'Meals',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 24,
                top: 525,
                child: Container(
                    width: 382,
                    height: 173,
                    decoration: BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
            ),
            Positioned(
                left: 37,
                top: 275,
                child: Container(
                    width: 382,
                    height: 173,
                    decoration: BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
            ),
            Positioned(
                left: 37,
                top: 548,
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
                top: 528,
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
                left: 209,
                top: 278,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Banana',
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
                top: 561,
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
                left: 198,
                top: 311,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Calories: 400',
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
                top: 592,
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
                left: 198,
                top: 342,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Protein: 1g',
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
                top: 623,
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
                left: 198,
                top: 373,
                child: SizedBox(
                    width: 183,
                    height: 40,
                    child: Text(
                        'Carbs: 40g',
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
                left: 60,
                top: 298,
                child: Text(
                    '🍌',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 117,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 14,
                top: 13,
                child: Text(
                    '🔙',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 49,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 155,
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
                left: 179,
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
        ],
    ),
)
  }
}
