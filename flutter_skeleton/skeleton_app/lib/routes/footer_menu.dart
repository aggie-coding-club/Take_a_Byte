import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/camera_screen.dart';
import 'package:skeleton_app/routes/locator_screen.dart';
import 'package:skeleton_app/routes/settings_screen.dart';
import 'package:skeleton_app/routes/settings_screen.dart';

//This is the footer bar, it still has bugs to work out
//it is used as a common class across all screens in order
//to maintain a consistent footer

//TODO: make camera button work well

class footerMenu extends StatelessWidget {
  const footerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: Colors.white,
        backgroundColor: const Color.fromARGB(255, 203, 104, 18),
        activeColor: const Color.fromARGB(255, 255, 198, 146),
        //gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const locatorScreen()),
              );
            },
          ),
          GButton(
            icon: Icons.camera,
            text: 'Scan Food',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const cameraScreen()),
              );
            },
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ]);
  }
}
