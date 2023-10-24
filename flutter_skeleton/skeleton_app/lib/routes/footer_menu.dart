import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/camera_screen.dart';
import 'package:skeleton_app/routes/locator_screen.dart';

//This is the footer bar, it still has bugs to work out
//it is used as a common class across all screens in order
//to maintain a consistent footer

class footerMenu extends StatelessWidget {
  const footerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: Colors.white,
        backgroundColor: Color.fromARGB(255, 203, 104, 18),
        activeColor: Color.fromARGB(255, 255, 198, 146),
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => locatorScreen()),
              );
            },
          ),
          GButton(
            icon: Icons.camera,
            text: 'Scan Food',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cameraScreen()),
              );
            },
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ]);
  }
}
