// Importing required packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Importing custom files
import 'package:push_notification/firebase_options.dart';
import 'package:push_notification/presentation/home_page/home_page.dart';
import 'package:push_notification/presentation/notifications_page/notification_page.dart';

// Main function
Future<void> main() async {
  // Ensuring Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initializing Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Running the app
  runApp(const MyApp());
}

// MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Defining routes for navigation
      routes: {'/notifications': (context) => const NotificationsPage()},

      // App title
      title: 'Flutter Demo',

      // App theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // Starting point of the app
      home: const HomePage(),
    );
  }
}
