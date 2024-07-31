import 'package:flutter/material.dart';
import 'package:iti/components/custom_text.dart';
import 'package:iti/screens/register_screen.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: const Color(0xff050522),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/welcome.png',
                height: 300,
              ),
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xffFFECAA),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Welcome back !!!',
                                color: Color(0xff050522),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              CustomText(
                                text: 'Login',
                                color: Color(0xff050522),
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.red,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.close,
                                color: Color(0xff050522),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      CustomTextField(
                        labelText: 'Username or Email',
                        controller: usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter username or email';
                          }
                          return null;
                        },
                        suffixIcon: Icons.remove_red_eye,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Password',
                        obscureText: true,
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        suffixIcon: Icons.lock,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              const CustomText(
                                text: 'Remember me',
                                color: Color(0xff050522),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          const CustomText(
                            text: 'Forgot Password?',
                            color: Color(0xff050522),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Login',
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {}
                        },
                        buttonColor: const Color(0xff050522),
                        textButtonColor: const Color(0xffffde69),
                        borderColor: const Color(0xff050522),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomText(
                            text: 'Don\'t have an account?',
                            color: Color(0xff050522),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              );
                            },
                            child: const CustomText(
                              text: 'Register',
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
