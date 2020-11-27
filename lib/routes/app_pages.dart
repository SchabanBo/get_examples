import 'package:get/get.dart';
import 'package:get_page_example/pages/Amy/amy_warper.dart';
import 'package:get_page_example/pages/Ben/ben_warper.dart';
import 'package:get_page_example/pages/Emma/emmy_warper.dart';
import 'package:get_page_example/pages/Erica/erica_warper.dart';
import 'package:get_page_example/pages/Jack-Bing/jack_bing_warper.dart';
import 'package:get_page_example/pages/Jack/jack_warper.dart';
import 'package:get_page_example/pages/Jill/jill_warper.dart';
import 'package:get_page_example/pages/Judy/judy_warper.dart';
import 'package:get_page_example/pages/Monica/monica_warper.dart';
import 'package:get_page_example/pages/Rachel/rachel_warper.dart';
import 'package:get_page_example/pages/Ross/ross_warper.dart';
import 'package:get_page_example/pages/Sandra/sandra_warper.dart';
import 'package:get_page_example/pages/gellers/gellers_warper.dart';
import 'package:get_page_example/pages/greens/greens_warper.dart';
import 'package:get_page_example/pages/home/bindings/home_binding.dart';
import 'package:get_page_example/pages/home/views/home_view.dart';

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
        ])
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

  static final test = [
    GetPage(
      name: '/gellers',
      page: () => GellersView(),
      binding: GellersBinding(),
    ),
    GetPage(
      name: '/gellers/jack',
      page: () => JackView(),
      binding: JackBinding(),
    ),
    GetPage(
      name: '/gellers/jack/monica',
      page: () => MonicaView(),
      binding: MonicaBinding(),
    ),
    GetPage(
      name: '/gellers/jack/monica/jackj',
      page: () => JackBingView(),
      binding: JackBingBinding(),
    ),
    GetPage(
      name: '/gellers/jack/monica/erica',
      page: () => EricaView(),
      binding: EricaBinding(),
    ),
    GetPage(
      name: '/gellers/jack/ross',
      page: () => RossView(),
      binding: RossBinding(),
    ),
    GetPage(
      name: '/gellers/jack/ross/bin',
      page: () => BenView(),
      binding: BenBinding(),
    ),
    GetPage(
      name: '/gellers/jack/ross/emma',
      page: () => EmmaView(),
      binding: EmmaBinding(),
    ),
    GetPage(
      name: '/gellers/judy',
      page: () => JudyView(),
      binding: JudyBinding(),
    ),
    GetPage(
      name: '/gellers/judy/monica',
      page: () => MonicaView(),
      binding: MonicaBinding(),
    ),
    GetPage(
      name: '/gellers/judy/monica/jackj',
      page: () => JackBingView(),
      binding: JackBingBinding(),
    ),
    GetPage(
      name: '/gellers/judy/monica/erica',
      page: () => EricaView(),
      binding: EricaBinding(),
    ),
    GetPage(
      name: '/gellers/judy/ross',
      page: () => RossView(),
      binding: RossBinding(),
    ),
    GetPage(
      name: '/gellers/judy/ross/bin',
      page: () => BenView(),
      binding: BenBinding(),
    ),
    GetPage(
      name: '/gellers/judy/ross/emma',
      page: () => EmmaView(),
      binding: EmmaBinding(),
    )
  ];
}
