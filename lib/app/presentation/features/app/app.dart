
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:responsive_framework/responsive_framework.dart';


class GcmApp extends StatelessWidget {
  const GcmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   lazy: false,
        //   create: (context) => AuthCubit(
        //     authRepository: sl(),
        //     teamRepository: sl(),
        //   )..checkAuthentication(),
        // ),

      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // routerDelegate: AppRouter.router.routerDelegate,
        // routeInformationParser: AppRouter.router.routeInformationParser,
        // routeInformationProvider: AppRouter.router.routeInformationProvider,
        // theme: AppTheme.lightTheme,
        // scaffoldMessengerKey: SnackBarUtils.rootScaffoldMessengerKey,
        builder: (context, child) {
          return ResponsiveBreakpoints.builder(
            child: EasyLoading.init()(context, child!),
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          );
        },
      ),
    );
  }
}