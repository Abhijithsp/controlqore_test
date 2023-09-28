import 'package:controlqore_test/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ControlQore',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
            useMaterial3: true,
          ),
          onGenerateRoute: (settings) => AppRouter().generateRoute(settings),
          builder: EasyLoading.init(),
        );
      },
    );

  }
}

