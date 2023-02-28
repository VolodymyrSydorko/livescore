import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:livescore/app_state_wrapper.dart';
import 'package:livescore/router/index.dart';
import 'package:livescore/services/index.dart';
import 'package:livescore/styles/index.dart';

class Livescore extends StatelessWidget {
  Livescore({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppStateWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Livescore',
        theme: AppTheme.getAppTheme(context),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [RouterObserver()],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
