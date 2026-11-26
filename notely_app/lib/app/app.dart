import 'package:flutter/material.dart';
import 'package:notely_app/app/home_shell.dart';
import 'package:notely_app/app/theme/app_theme.dart';
import 'package:notely_app/core/constants/app_colors.dart';
import 'package:notely_app/features/auth/email_login_screen.dart';
import 'package:notely_app/features/auth/welcome_screen.dart';
import 'package:notely_app/features/notes/notes_screen.dart';

class NotelyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: WelcomeScreen()
    );
  }
}

