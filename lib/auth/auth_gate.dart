import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter_map/tab/tab_page.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in
        // 로그인이 안되어있으면 이걸 보여준다
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: [
              EmailAuthProvider(),
            ],
            headerBuilder: (context, constraints, _) {
              return const Center(
                  child: Text(
                    'Flutter Map',
                    style: TextStyle(fontSize: 40),
                  )
              );
            },
          );
        }
        // Render your application if authenticated
        // 로그인이 되어있으면 탭페이지로 이동
        return const TabPage();
      },
    );
  }
}