import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/core/theme/app_pallete.dart';
import 'package:riverpod_tutorial/feature/auth/view/widgets/auth_gradient_button.dart';
import 'package:riverpod_tutorial/feature/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
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
              Text('Sign Up.', style: TextStyle(fontSize: 50, fontWeight: .bold)),
              SizedBox(height: 50),
              CustomField(hintText: "Name", controller: nameController),
              SizedBox(height: 15),
              CustomField(hintText: "Email", controller: emailController),
              SizedBox(height: 15),
              CustomField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              SizedBox(height: 20),
              AuthGradientButton(),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Alreadly an user?",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: ' Sign In',
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
