 

import 'package:soundsphere/data/models/create_user.dart';

abstract class AuthRepo{
  Future <void> signin(CreateUser create_user);
  Future <void> register(CreateUser create_user );
}