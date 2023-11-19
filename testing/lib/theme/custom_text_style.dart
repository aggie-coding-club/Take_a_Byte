import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get displaySmallWhiteA700Regular =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get displaySmallWhiteA700_1 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Headline text style
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  // Label text style
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoPrimary =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.54),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplay =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get helvetica {
    return copyWith(
      fontFamily: 'Helvetica',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
