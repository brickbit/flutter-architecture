import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/di/di.dart';
import 'package:flutter_architecture/app/navigation/route.dart';
import 'package:flutter_architecture/app/screen/splash/splash_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../theme/theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class _MyAppState extends State<MyApp> {
  late GoRouter router;

  @override
  void initState() {
    final splashCubit = injector.get<SplashCubit>();
    splashCubit.loadNextScreen();
    router = buildRoutes(splashCubit);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter architecture',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: S.supportedLocales,
      theme: buildThemeData(),
      routerConfig: router,
      builder: (context, child) {
        return DevicePreview.appBuilder(context, child);
      },
    );
  }
}