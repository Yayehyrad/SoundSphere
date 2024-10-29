import 'package:firebase_auth/firebase_auth.dart';
import 'package:soundsphere/data/models/create_user.dart';
 
abstract class AuthFireBaseService {
  Future <void> signin(CreateUser create_user );
  Future <void> register(CreateUser create_user );
}



class AuthFireBaseServiceImp implements AuthFireBaseService {
  @override
  Future<void> register(CreateUser create_user) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: create_user.email, password: create_user.password);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  Future<void> signin(CreateUser create_user) async {
      try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: create_user.email, password: create_user.password);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
  
}