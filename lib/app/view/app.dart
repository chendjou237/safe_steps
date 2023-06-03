// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_steps/app/configs/router/app_router.dart';
import 'package:safe_steps/app/configs/theme/theme.dart';
import 'package:safe_steps/l10n/l10n.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  final theme = SafeTheme();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        theme: theme.toThemeData(
          Brightness.light,
        ),
        darkTheme: theme.toThemeData(
          Brightness.dark,
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
