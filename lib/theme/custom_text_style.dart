// ignore_for_file: unnecessary_import, unused_element

import 'package:flutter/material.dart';
import 'package:helpful_hive/core/app_export.dart';
import 'package:helpful_hive/theme/theme_helper.dart';

extension on TextStyle {
  TextStyle get aclonica {
    return copyWith(
      fontFamily: 'Aclonica',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get acme {
    return copyWith(
      fontFamily: 'Acme',
    );
  }

  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }

  TextStyle get nobile {
    return copyWith(
      fontFamily: 'Nobile',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
      );
  static get bodyLargeNobileBlack900 =>
      theme.textTheme.bodyLarge!.nobile.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeNobileGray800 =>
      theme.textTheme.bodyLarge!.nobile.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeNobileTeal90001 =>
      theme.textTheme.bodyLarge!.nobile.copyWith(
        color: appTheme.teal90001,
      );
  static get bodyLargeTeal90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.teal90001,
      );
  static get bodyMediumAclonicaBlack900 =>
      theme.textTheme.bodyMedium!.aclonica.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumAclonicaWhiteA700 =>
      theme.textTheme.bodyMedium!.aclonica.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumAcmeTeal900 => theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.teal900,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumTeal90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal90001,
      );
// Display text style
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
      );
// Headline text style
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
// Title text style
  static get titleLargeActorWhiteA700 =>
      theme.textTheme.titleLarge!.actor.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
      );
}
