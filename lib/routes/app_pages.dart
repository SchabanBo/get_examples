import 'package:get/get.dart';
import 'package:get_page_example/pages/GetPageExample/Amy/amy_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Ben/ben_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Emma/emmy_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Erica/erica_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Jack-Bing/jack_bing_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Jack/jack_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Jill/jill_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Judy/judy_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Monica/monica_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Rachel/rachel_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Ross/ross_warper.dart';
import 'package:get_page_example/pages/GetPageExample/Sandra/sandra_warper.dart';
import 'package:get_page_example/pages/GetPageExample/gellers/gellers_warper.dart';
import 'package:get_page_example/pages/GetPageExample/greens/greens_warper.dart';
import 'package:get_page_example/pages/home/bindings/home_binding.dart';
import 'package:get_page_example/pages/home/views/home_view.dart';
import 'package:get_page_example/pages/login/login_view.dart';
import 'package:get_page_example/routes/middlewares/auth_middleware.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static String init = Routes.Home.nameToRoute();

  static final routes = [
    GetPage(
        name: Routes.Home.nameToRoute(),
        page: () => HomeView(),
        binding: HomeBinding(),
        children: [
          theGreens,
          theGellers,
        ],
        middlewares: [
          AuthMiddleware()
        ]),
    GetPage(name: '/login', page: () => LoginView())
  ];

  static final theGreens = GetPage(
      name: '/greens',
      page: () => GreensView(),
      binding: GreensBinding(),
      children: [
        GetPage(
            name: '/sandra',
            page: () => SandraView(),
            binding: SandraBinding(),
            children: [
              GetPage(
                  name: '/jill',
                  page: () => JillView(),
                  binding: JillBinding()),
              GetPage(
                  name: '/amy', page: () => AmyView(), binding: AmyBinding()),
              GetPage(
                  name: '/rachel',
                  page: () => RachelView(),
                  binding: RachelBinding(),
                  children: [
                    GetPage(
                        name: '/emma',
                        page: () => EmmaView(),
                        binding: EmmaBinding()),
                  ]),
            ]),
        GetPage(
            name: '/leonard',
            page: () => SandraView(),
            binding: SandraBinding(),
            children: [
              GetPage(
                  name: '/jill',
                  page: () => JillView(),
                  binding: JillBinding()),
              GetPage(
                  name: '/amy', page: () => AmyView(), binding: AmyBinding()),
              GetPage(
                  name: '/rachel',
                  page: () => RachelView(),
                  binding: RachelBinding(),
                  children: [
                    GetPage(
                        name: '/emma',
                        page: () => EmmaView(),
                        binding: EmmaBinding()),
                  ]),
            ]),
      ]);

  static final theGellers = GetPage(
      name: '/gellers',
      page: () => GellersView(),
      binding: GellersBinding(),
      children: [
        GetPage(
            name: '/jack',
            page: () => JackView(),
            binding: JackBinding(),
            children: [
              GetPage(
                  name: '/monica',
                  page: () => MonicaView(),
                  binding: MonicaBinding(),
                  children: [
                    GetPage(
                        name: '/jackj',
                        page: () => JackBingView(),
                        binding: JackBingBinding()),
                    GetPage(
                        name: '/erica',
                        page: () => EricaView(),
                        binding: EricaBinding())
                  ]),
              GetPage(
                  name: '/ross',
                  page: () => RossView(),
                  binding: RossBinding(),
                  children: [
                    GetPage(
                        name: '/bin',
                        page: () => BenView(),
                        binding: BenBinding()),
                    GetPage(
                        name: '/emma',
                        page: () => EmmaView(),
                        binding: EmmaBinding()),
                  ])
            ]),
        GetPage(
            name: '/judy',
            page: () => JudyView(),
            binding: JudyBinding(),
            children: [
              GetPage(
                  name: '/monica',
                  page: () => MonicaView(),
                  binding: MonicaBinding(),
                  children: [
                    GetPage(
                        name: '/jackj',
                        page: () => JackBingView(),
                        binding: JackBingBinding()),
                    GetPage(
                        name: '/erica',
                        page: () => EricaView(),
                        binding: EricaBinding())
                  ]),
              GetPage(
                  name: '/ross',
                  page: () => RossView(),
                  binding: RossBinding(),
                  children: [
                    GetPage(
                        name: '/bin',
                        page: () => BenView(),
                        binding: BenBinding()),
                    GetPage(
                        name: '/emma',
                        page: () => EmmaView(),
                        binding: EmmaBinding()),
                  ])
            ])
      ]);
}
