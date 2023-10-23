import 'package:go_router/go_router.dart';

import '../../logAuth/auth/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    path: '/',
    builder: (context, state) => HomeScreen(),
  ),
]);
