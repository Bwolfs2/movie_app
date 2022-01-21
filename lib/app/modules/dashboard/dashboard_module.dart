import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_app_movie/movie.dart';
import 'package:movie_app_tv_show/movie_app_tv_show.dart';

import 'dashboard_page.dart';

class DashboardModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => const DashBoardPage(),
        children: [
          ModuleRoute('/movie_module', module: MovieModule(), transition: TransitionType.fadeIn),
          ModuleRoute('/tv_show', module: TvShowModule(), transition: TransitionType.fadeIn),
        ],
        transition: TransitionType.fadeIn),
  ];
}
