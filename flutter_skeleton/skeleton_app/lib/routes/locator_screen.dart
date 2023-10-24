import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/camera_screen.dart';

class locatorScreen extends StatelessWidget {
  const locatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take A Byte'),
      ),
      bottomNavigationBar: GNav(
          color: Colors.white,
          backgroundColor: Color.fromARGB(255, 203, 104, 18),
          activeColor: Color.fromARGB(255, 255, 198, 146),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
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
          ]),
    );
  }
}


//routes/footer_menu.dart'
