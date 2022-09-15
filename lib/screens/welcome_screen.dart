import 'package:flutter/material.dart';

import '../widgets/my_button.dart';
import 'registration_screen.dart';
import 'signin_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('assets/images/icon1.png'),
                ),
                const Text(
                  'MessageMe',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 186, 166, 222),
                      fontFamily: 'Raleway'),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Mybutton(
              color: Color.fromARGB(255, 255, 204, 211),
              onpressed: () {
                Navigator.pushNamed(context, SignInScreen.signinRoute);
              },
              title: 'Sign in',
            ),
            Mybutton(
                color: Color.fromARGB(255, 126, 184, 218),
                title: 'Register',
                onpressed: () {
                  Navigator.pushNamed(
                      context, RegistrationScreen.registerRoute);
                })
          ],
        ),
      ),
    );
  }
}
