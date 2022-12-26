// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:draggable/ecommerce/ecommerce_1/ecommerce_1.dart';
import 'package:draggable/login/view/login_page.dart';

import 'package:draggable/share/view/share_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ECommerce1, initial: true),
    AutoRoute(page: SharePage),
  ],
)
class $AppRouter {}
