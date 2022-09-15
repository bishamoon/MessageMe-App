import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/signin_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MessageMe',
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 255, 171, 185),
          accentColor: const Color.fromARGB(255, 202, 186, 247),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              headline5: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
              headline6: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ))),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.chatScreenRoute
          : WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SignInScreen.signinRoute: (context) => SignInScreen(),
        RegistrationScreen.registerRoute: (context) => RegistrationScreen(),
        ChatScreen.chatScreenRoute: (context) => ChatScreen()
      },
    );
  }
}
