import 'package:get_it/get_it.dart';

import 'feature/auth/auth_injection.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Initialize each feature
  await AuthInjection.init(sl);

  // TODO: init other features and global services
}
