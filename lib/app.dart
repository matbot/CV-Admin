import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cv_admin_flutter_web/views/signinpage.dart';
import 'package:cv_admin_flutter_web/views/homepage.dart';
import 'models/user.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Consumer<User>(
        builder: (_, user, __) {
          if (user == null) {
            return const SignInView();
          } else {
            return const HomeView();
          }
        },
      ),
    );
  }
}