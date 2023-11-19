import 'package:flutter/material.dart';
import 'package:cesar_s_application1/presentation/home_screen/home_screen.dart';
import 'package:cesar_s_application1/presentation/template_screen/template_screen.dart';
import 'package:cesar_s_application1/presentation/search_screen/search_screen.dart';
import 'package:cesar_s_application1/presentation/loading_screen/loading_screen.dart';
import 'package:cesar_s_application1/presentation/camera_screen/camera_screen.dart';
import 'package:cesar_s_application1/presentation/settings_screen/settings_screen.dart';
import 'package:cesar_s_application1/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:cesar_s_application1/presentation/lily_s_frame_screen/lily_s_frame_screen.dart';
import 'package:cesar_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:cesar_s_application1/presentation/verify_screen/verify_screen.dart';
import 'package:cesar_s_application1/presentation/logos_and_design_notes_screen/logos_and_design_notes_screen.dart';
import 'package:cesar_s_application1/presentation/components_screen/components_screen.dart';
import 'package:cesar_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String templateScreen = '/template_screen';

  static const String searchScreen = '/search_screen';

  static const String loadingScreen = '/loading_screen';

  static const String cameraScreen = '/camera_screen';

  static const String settingsScreen = '/settings_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String lilySFrameScreen = '/lily_s_frame_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verifyScreen = '/verify_screen';

  static const String logosAndDesignNotesScreen =
      '/logos_and_design_notes_screen';

  static const String componentsScreen = '/components_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    templateScreen: (context) => TemplateScreen(),
    searchScreen: (context) => SearchScreen(),
    loadingScreen: (context) => LoadingScreen(),
    cameraScreen: (context) => CameraScreen(),
    settingsScreen: (context) => SettingsScreen(),
    signInScreen: (context) => SignInScreen(),
    lilySFrameScreen: (context) => LilySFrameScreen(),
    signUpScreen: (context) => SignUpScreen(),
    verifyScreen: (context) => VerifyScreen(),
    logosAndDesignNotesScreen: (context) => LogosAndDesignNotesScreen(),
    componentsScreen: (context) => ComponentsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
