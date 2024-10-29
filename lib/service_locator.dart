import 'package:get_it/get_it.dart';
import 'package:soundsphere/data/repo/auth_repo_impl.dart';
import 'package:soundsphere/data/sources/auth_fire_base.dart';
import 'package:soundsphere/domain/repos/auth.dart';

final sl = GetIt.instance;

Future<void> initializeDependency() async {
  sl.registerSingleton<AuthFireBaseService>(
    AuthFireBaseServiceImp()
  );
   sl.registerSingleton<AuthRepo>(
    AuthRepoImpl()
  );
}