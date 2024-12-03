import 'package:flutter/material.dart';

import '../../../../../core/routes/type_safe_routes.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          child: Text('Login'),
          onPressed: () {
            const DashboardRoute().go(context);
          },
        ),
      ),
    );
  }
}
