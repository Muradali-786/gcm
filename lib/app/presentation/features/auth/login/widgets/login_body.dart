import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gcm/app/core/routes/type_safe_routes.dart';
import 'package:gcm/app/core/theme/app_styles.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/theme/app_color.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      Assets.images.emp.path,
                    ),
                  ),
                  const Gap(40),
                  Text(
                    "Welcome Teacher!",
                    style: kSecondaryHeadingStyle,
                  ),
                  const Gap(8),
                  Text(
                    "Log in to your Admin Portal",
                    style: kSecondaryHeading3Style.copyWith(fontSize: 16),
                  ),
                  const Gap(40),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                    ),
                    validator: (value) {
                      return null;
                    },
                  ),
                  const Gap(16),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    validator: (value) {
                      return null;
                    },
                  ),
                  const Gap(30),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        AdminDashboardRoute().go(context);

                      },
                      child: Text('Login'),
                    ),
                  ),
                  Gap(10),
                  RichText(
                    text: TextSpan(
                      text: "Don’t have an account? ",
                      style: kSecondaryHeading3Style.copyWith(
                        color: AppColors.kGray85,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "Signup",
                          style: TextStyle(
                            color: AppColors.kPrimaryBlue,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  )
                  // Signup Redirect Text
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
