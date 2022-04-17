import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsaf/Business%20Logic/shared/app_Bloc/app_bloc.dart';
import 'package:maqsaf/routes/routes.dart';

import 'Presentation/layouts/app_layout.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 959),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_) {
          return BlocProvider(
            create: (context) => AppCubit(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              useInheritedMediaQuery: true,
              title: 'Flutter Demo',
              onGenerateRoute: appRouter.generateRoute,
            ),
          );
        });
  }
}
