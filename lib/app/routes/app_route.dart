import 'package:application_one/view/arithmetic_view.dart';
import 'package:application_one/view/container_view.dart';
import 'package:application_one/view/dashboard_view.dart';
import 'package:application_one/view/image_view.dart';
import 'package:application_one/view/output_view.dart';
import 'package:application_one/view/random_num.dart';

class AppRoute {
  AppRoute._();

  static const String dashboardRoute = '/';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/random';
  static const String containerRoute = '/container';
  static const String imageRoutes = '/image';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      arithmeticRoute: (context) => const AtithmeticView(),
      outputRoute: (context) => const OutputView(),
      randomRoute: (context) => const RandomNumber(),
      containerRoute: (context) => const ContainerView(),
      imageRoutes: (context) => const ImageView(),
    };
  }
}
