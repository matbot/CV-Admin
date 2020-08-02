import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart' as buttons;
import 'package:provider/provider.dart';
import 'package:cv_admin_flutter_web/services/firebase_auth.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttons.GoogleSignInButton(
      onPressed: () {
        context.read<FirebaseAuthService>().signInWithGoogle();
      },
      darkMode: true,
      textStyle: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }
}