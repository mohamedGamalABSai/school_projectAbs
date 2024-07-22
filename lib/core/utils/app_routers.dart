import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:school_system_abs/features/home/peresentation/view/home_view.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/change_pages_view_model.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kReadMoreView = '/ReadMoreView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => ChangeNotifierProvider(
            create: ( context) {
              return ChangePagesProvider();
            },
            child: const HomeView()),
      ),
      GoRoute(
        path: kReadMoreView,
        builder: (context, state) => const Text("fgdgdj"),
      ),
    ],
  );
}
