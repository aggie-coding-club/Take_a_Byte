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
        centerTitle: true,
      ),
      bottomNavigationBar: footerMenu(),
    );
  }
}
