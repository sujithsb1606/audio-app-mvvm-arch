import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/core/theme/app_pallete.dart';
import 'package:riverpod_tutorial/feature/auth/view/widgets/auth_gradient_button.dart';
import 'package:riverpod_tutorial/feature/auth/view/widgets/custom_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                'Sign In.',
                style: TextStyle(fontSize: 50, fontWeight: .bold),
              ),
              SizedBox(height: 50),
              CustomField(hintText: "Email", controller: emailController),
              SizedBox(height: 15),
              CustomField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              SizedBox(height: 20),
              AuthGradientButton(buttonText: "Sign In", onTap: () {},),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                        color: Pallete.gradient2,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
