import 'package:caretutors/pages/HomePage/home_screen.dart';
import 'package:caretutors/pages/LoginPage/login_page.dart';
import 'package:caretutors/pages/RegistrationPage/registration_page.dart';
import 'package:caretutors/pages/notesscreen/note.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/splashscreen/splash_screen.dart';

GoRouter router = GoRouter(
  initialLocation: "/splash_screen",
  routes: [
    GoRoute(
        path: '/splash_screen',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        }),
    GoRoute(
        path: '/login_page',
        pageBuilder: (context, state) {
          return const MaterialPage(child: LoginPage());
        }),
    GoRoute(
        path: '/registration_page',
        pageBuilder: (context, state) {
          return const MaterialPage(child: RegistrationPage());
        }),
    GoRoute(
        path: '/home_screen',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        }),
    GoRoute(
        path: '/note_screen',
        pageBuilder: (context, state) {
          return const MaterialPage(child: NoteScreen());
        }),
  ],
);
