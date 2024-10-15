import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/navigator/navigator_part.dart';
import 'package:flutter_spotify_ui/src/screens/create_account/create_account_screen_widget.dart';
import 'package:flutter_spotify_ui/src/screens/startup/startup_screen_widget.dart';
import 'package:go_router/go_router.dart';

class NavigatorRoute {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Destination.home,
        builder: (BuildContext context, GoRouterState state) {
          return const StartupScreenWidget();
        },
      ),
      GoRoute(
        path: Destination.createAccount,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateAccountScreenWidget();
        },
      ),
    ],
  );
}
