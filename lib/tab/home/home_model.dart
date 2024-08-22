import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class HomeModel{
  void logout() async{
    await FirebaseUIAuth.signOut();
  }
}