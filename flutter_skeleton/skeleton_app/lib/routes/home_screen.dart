import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/camera_screen.dart';

/* Gotten a baseline code down that's a bit more efficient and slightly cleaner
than the initial code conversion. The nav bar could be implemented if we were
going to once again use that, but right now just focusing on the camera and
search buttons. Also until I've actually figured out how to properly import
images, I've taken to the headache inducing method of just pasting in a link
to each image class I've generated via discord. For food images and whatnot,
some communication with the camera page and the transfer of images will probably
be needed. */

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Home(),
        ]),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 14.03,
                top: 62,
                child: Container(
                  width: 400.94,
                  height: 57,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/274783661671317505/1174854039553446000/image.png?ex=65691b16&is=6556a616&hm=b1ba69e302b8514ae48024da2e8298f6a9aba7b3531d9a955a39519bcf3184b4&"),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x72000000),
                        blurRadius: 50,
                        offset: Offset(0, 5),
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
                  decoration: const BoxDecoration(color: Color(0xFF998080)),
                ),
              ),
              Positioned(
                left: 0,
                top: 862,
                child: Container(
                  width: 430,
                  height: 71,
                  decoration: const BoxDecoration(color: Color(0xFF998080)),
                ),
              ),
              Positioned(
                left: 133,
                top: 0,
                child: Container(
                  width: 153,
                  height: 71,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/274783661671317505/1174854907715653632/image.png?ex=65691be5&is=6556a6e5&hm=9233ab37b9e40a0593d2098b0489dd7fea68bcfbd327ae6616f232724e1140a1&"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
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
              const Positioned(
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
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()), //To be replaced by settings page location?? None currently.
                    
                );
              },
              child: Container(
                  width: 47,
                  height: 47,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/274783661671317505/1174855118391349311/image.png?ex=65691c17&is=6556a717&hm=efe5b4ef0826fe73d22ddb8ab08e78777d90642c2d3c5aa4df1972ea08d4a636&"),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                ),
              ),
            ),
              Positioned(
                left: 24,
                top: 132,
                child: Container(
                  width: 382,
                  height: 173,
                  decoration: const BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
              ),
              Positioned(
                left: 24,
                top: 308,
                child: Container(
                  width: 382,
                  height: 173,
                  decoration: const BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
              ),
              Positioned(
                left: 24,
                top: 484,
                child: Container(
                  width: 382,
                  height: 173,
                  decoration: const BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
              ),
              Positioned(
                left: 24,
                top: 660,
                child: Container(
                  width: 382,
                  height: 173,
                  decoration: const BoxDecoration(color: Color(0xFFF7EFEF)),
                ),
              ),
              Positioned(
                left: 37,
                top: 155,
                child: Container(
                  width: 159,
                  height: 127,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/274783661671317505/1174856015062245436/image.png?ex=65691ced&is=6556a7ed&hm=d36b107be5ecaa201f45d4b4a9377e5eeb168d96e27ad4e755369f37c25996f3&"),
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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/274783661671317505/1174856015062245436/image.png?ex=65691ced&is=6556a7ed&hm=d36b107be5ecaa201f45d4b4a9377e5eeb168d96e27ad4e755369f37c25996f3&"),
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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/274783661671317505/1174856015062245436/image.png?ex=65691ced&is=6556a7ed&hm=d36b107be5ecaa201f45d4b4a9377e5eeb168d96e27ad4e755369f37c25996f3&"),
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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/274783661671317505/1174856015062245436/image.png?ex=65691ced&is=6556a7ed&hm=d36b107be5ecaa201f45d4b4a9377e5eeb168d96e27ad4e755369f37c25996f3&"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
              const Positioned(
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
                  decoration: const ShapeDecoration(
                    color: Color(0xFF998080),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 174,
                top: 855,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cameraScreen()),
                    );
                  },
                  child: Container(
                    width: 72,
                    height: 72,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.discordapp.com/attachments/274783661671317505/1174855548399800442/image.png?ex=65691c7e&is=6556a77e&hm=06791321fe04e564ee4d8ca0d91f1bd1e9a421a7a1776065e012de199fc21b82&"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
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
        ),
      ],
    );
  }
}
