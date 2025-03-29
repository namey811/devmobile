import 'package:devmobile/presentation/screen/animated/animated_screen.dart';
import 'package:devmobile/presentation/screen/cards/cards_screen.dart';
import 'package:devmobile/presentation/screen/formularios/form_clientes.dart';
import 'package:devmobile/presentation/screen/home/home_screen.dart';
import 'package:devmobile/presentation/screen/login/login_screen.dart';
import 'package:devmobile/presentation/screen/stack/stack_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/formclientes',
      builder: (context, state) => const FormClientes(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimetedScreen(),
    ),
    GoRoute(
      path: '/stack',
      builder: (context, state) => const StackScreen(),
    ),
  ],
);