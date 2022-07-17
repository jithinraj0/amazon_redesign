import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_spacer.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register-screen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/amazon_in.png',
          width: 120,
          height: 40,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _loginFormKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Name'),
              const VerticalSpacer(height: 10),
              CustomTextField(controller: _nameController, hintText: "Name"),
              const VerticalSpacer(height: 20),
              const Text('Email'),
              const VerticalSpacer(height: 10),
              CustomTextField(controller: _emailController, hintText: "Email"),
              const VerticalSpacer(height: 20),
              const Text('Password'),
              const VerticalSpacer(height: 10),
              CustomTextField(
                  controller: _passwordController, hintText: "Password"),
              const VerticalSpacer(height: 20),
              CustomPrimaryButton(
                buttonText: 'Register',
                onTap: (() {}),
              ),
              const VerticalSpacer(height: 50),
              const Center(
                child: Text('Already have an account?'),
              ),
              const VerticalSpacer(height: 20),
              CustomSecondaryButton(
                buttonText: 'Login',
                onTap: (() {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
