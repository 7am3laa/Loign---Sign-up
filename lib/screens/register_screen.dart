import 'package:flutter/material.dart';
import 'package:iti/components/custom_button.dart';
import 'package:iti/components/custom_text.dart';
import 'package:iti/components/custom_text_field.dart';
import 'package:iti/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController courseController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
                height: 230,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xffFFECAA),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Hello',
                                color: Color(0xff050522),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              CustomText(
                                text: 'Register',
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
                      const SizedBox(height: 20),
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
                        labelText: 'Course',
                        controller: courseController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter course';
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
                      const SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Confirm Password',
                        obscureText: true,
                        controller: confirmPasswordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter confirm password';
                          }
                          if (value != passwordController.text) {
                            return 'Password does not match';
                          }
                          return null;
                        },
                        suffixIcon: Icons.lock,
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Register',
                        onPressed: () {
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
                            text: 'Already have an account?',
                            color: Color(0xff050522),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            child: const CustomText(
                              text: 'Login',
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
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
