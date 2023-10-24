import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/locator_screen.dart';

class cameraScreen extends StatelessWidget {
  const cameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('camera yes'),
      ),
    );
  }
}
