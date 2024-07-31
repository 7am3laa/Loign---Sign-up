import 'package:flutter/material.dart';
import 'package:iti/components/custom_button.dart';
import 'package:iti/components/custom_text.dart';
import 'package:iti/screens/register_screen.dart';

import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff050522),
      body: Column(
        children: [
          Image.asset('assets/images/welcome.png'),
          const CustomText(
            text: 'Welcome',
            color: Color(0xffEF5858),
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(height: 5),
          const CustomText(
            text:
                'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,\nsed do eiusmod',
            color: Color(0xffF4F4F4),
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomButton(
                  text: 'Create Account',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  buttonColor: const Color(0xffffde69),
                  textButtonColor: const Color(0xff1B1A40),
                  borderColor: const Color(0xff1B1A40),
                ),
                const SizedBox(height: 15),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  buttonColor: const Color(0xff1B1A40),
                  textButtonColor: const Color(0xffffde69),
                  borderColor: const Color(0xffffde69),
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
          const CustomText(
            text: 'All Rights Reserved @2024',
            color: Color(0xffffde69),
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
