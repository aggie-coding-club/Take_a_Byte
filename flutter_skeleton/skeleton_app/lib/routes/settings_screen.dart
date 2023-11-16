import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text("replace me with a standard")),
        // body: const Center(
        //   child: Column(
        //     children: [
        //       TextField(),
        //       TextField(),
        //       TextField(),
        //       TextField(),
        //       TextField(),
        //     ],
        //   ),
        // ),
        body: Container(
      width: 430,
      height: 932,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 45,
            top: 766,
            child: Container(
              width: 339.50,
              height: 53.17,
              padding: const EdgeInsets.all(14.77),
              decoration: ShapeDecoration(
                color: const Color(0xFFF8EFEF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF998080),
                  ),
                  borderRadius: BorderRadius.circular(9.85),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 33.52,
                    offset: Offset(0, 18.05),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Save ️📝',
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
            left: 44,
            top: 444,
            child: Container(
              width: 339.50,
              height: 53.17,
              padding: const EdgeInsets.all(14.77),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF998080),
                  ),
                  borderRadius: BorderRadius.circular(9.85),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 33.52,
                    offset: Offset(0, 18.05),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '✉️ Email...',
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
            left: 45,
            top: 231,
            child: Container(
              width: 339.50,
              height: 53.17,
              padding: const EdgeInsets.all(14.77),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF998080),
                  ),
                  borderRadius: BorderRadius.circular(9.85),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 33.52,
                    offset: Offset(0, 18.05),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '🏷️ Name...',
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
            left: 44,
            top: 302,
            child: Container(
              width: 339.50,
              height: 53.17,
              padding: const EdgeInsets.all(14.77),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF998080),
                  ),
                  borderRadius: BorderRadius.circular(9.85),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 33.52,
                    offset: Offset(0, 18.05),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '⚖️ Weight...',
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
            left: 44,
            top: 373,
            child: Container(
              width: 339.50,
              height: 53.17,
              padding: const EdgeInsets.all(14.77),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF998080),
                  ),
                  borderRadius: BorderRadius.circular(9.85),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 33.52,
                    offset: Offset(0, 18.05),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '📏 Height...',
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
            left: 0,
            top: 861,
            child: Container(
              width: 430,
              height: 71,
              decoration: const BoxDecoration(color: Color(0xFF998080)),
            ),
          ),
          Positioned(
            left: 15,
            top: 59,
            child: Container(
              width: 400.94,
              height: 57,
              decoration: const BoxDecoration(
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
              decoration: const BoxDecoration(color: Color(0xFF998080)),
            ),
          ),
          const Positioned(
            left: 69,
            top: 67,
            child: SizedBox(
              width: 291,
              height: 40,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '👋',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            left: 138,
            top: 0,
            child: Container(
              width: 153,
              height: 71,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/153x71"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 44,
            top: 534,
            child: Container(
              width: 158,
              height: 77,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/158x77"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 11,
            top: 873,
            child: Text(
              '👈',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 221,
            top: 534,
            child: Container(
              width: 163,
              height: 77,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/163x77"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 41,
            top: 626,
            child: Container(
              width: 161,
              height: 76,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/161x76"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 221,
            top: 626,
            child: Container(
              width: 163,
              height: 76,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/163x76"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 15,
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
            left: 161,
            top: 837,
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
            left: 185,
            top: 854,
            child: Container(
              width: 72,
              height: 72,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/72x72"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
