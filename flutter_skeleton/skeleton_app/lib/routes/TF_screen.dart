import 'package:flutter/material.dart';
import 'package:skeleton_app/routes/footer_menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skeleton_app/routes/locator_screen.dart';
import 'package:skeleton_app/routes/TF_screen.dart';

//figure out how to access the TF and api stuff

class TFScreen extends StatelessWidget {
  const TFScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doing algorithm things'),
        centerTitle: true,
      ),
      bottomNavigationBar: footerMenu(),
    );
  }
}
