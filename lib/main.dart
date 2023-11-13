import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:productivity_tracker/bloc/app_bloc.dart';
import 'package:productivity_tracker/screens/home_screen.dart';
import 'package:productivity_tracker/screens/skills.dart';
import 'package:productivity_tracker/screens/splash_screen.dart';
import 'package:productivity_tracker/screens/todo_overlay.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  runApp(BlocProvider<AppBloc>(
    create: (context) => AppBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivity App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAF0E6),
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFAF0E6),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) {
          return BlocProvider(
            create: (_) => AppBloc(),
            child: const HomeScreen(),
          );
        },
        '/addoverlay': (context) {
          return BlocProvider(
            create: (_) => AppBloc(),
            child: AddTodoOverlay(),
          );
        },
        '/skills': (context) {
          return BlocProvider(
            create: (_) => AppBloc(),
            child: const SkilsPomo(),
          );
        }
      },
    );
  }
}
