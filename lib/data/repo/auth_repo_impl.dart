import 'package:soundsphere/data/models/create_user.dart';
import 'package:soundsphere/data/sources/auth_fire_base.dart';
import 'package:soundsphere/domain/repos/auth.dart';
import 'package:soundsphere/service_locator.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<void> register(CreateUser create_user)async {
   await sl<AuthFireBaseService>().register(create_user);
  }

  @override
  Future<void> signin(CreateUser create_user) {
    // TODO: implement signin
    throw UnimplementedError();
  }

}