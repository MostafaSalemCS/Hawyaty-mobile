import 'package:flutter/material.dart';
import 'package:hawyaty/core/theme/app_theme.dart';
import 'package:hawyaty/core/theme/theme_manager.dart';
import 'package:provider/provider.dart';

extension ThemeContextExtension on BuildContext {
  AppTheme get getAppTheme => Provider.of<ThemeManager>(this, listen: false).currentTheme;
}