import 'package:getxstructurecode/module/details/presentation/view/detail_page.dart';
import 'package:getxstructurecode/module/home/presentation/view/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const HomePage(), routes: [
    GoRoute(
      path: "detail",
      builder: (context, state) => const DetailPage(),
    ),
  ]),
]);
