import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get pretendard {
    return copyWith(
      fontFamily: 'Pretendard',
    );
  }

  TextStyle get maruBuriOTF {
    return copyWith(
      fontFamily: 'MaruBuriOTF',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Headline text style
  static get headlineMediumAmber500 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.amber500,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
      );
  static get headlineSmallBlack90024 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
      );
  static get headlineSmallGray80001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray80001,
      );
  static get headlineSmallIndigoA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigoA700,
      );
  static get headlineSmallOrangeA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.orangeA700,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 24.fSize,
      );
  static get headlineSmallPrimary_1 => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallPurple500 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.purple500,
      );
  static get headlineSmallWhiteA70001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallWhiteA7000124 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 24.fSize,
      );
// Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeAmber500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.amber500,
      );
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 22.fSize,
      );
  static get titleLargeLightgreen600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightGreen600,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargePrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargeRed500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red500,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray900Bold14 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMaruBuriOTFBluegray900 =>
      theme.textTheme.titleSmall!.maruBuriOTF.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}
