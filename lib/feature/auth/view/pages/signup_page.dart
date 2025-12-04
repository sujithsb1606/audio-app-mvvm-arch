
import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/feature/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
   const SignupPage({super.key});


   @override
  State<SignupPage> createState() => _SignupPageState();

}

class _SignupPageState extends State<SignupPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Sign Up.',
            style: TextStyle(
              fontSize: 50,
              fontWeight: .bold
            ),
            ),
            SizedBox(height: 50,),
            CustomField(hintText: "Name",),
            SizedBox(height: 15,),
            CustomField(hintText: "Email",),
            SizedBox(height: 15,),
            CustomField(hintText: "Password",),
          ],
        ),
      ),
    );
  }
}