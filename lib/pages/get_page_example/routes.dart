import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/Amy/amy_warper.dart';
import 'package:get_page_example/pages/get_page_example/Ben/ben_warper.dart';
import 'package:get_page_example/pages/get_page_example/Emma/emmy_warper.dart';
import 'package:get_page_example/pages/get_page_example/Erica/erica_warper.dart';
import 'package:get_page_example/pages/get_page_example/Jack-Bing/jack_bing_warper.dart';
import 'package:get_page_example/pages/get_page_example/Jack/jack_warper.dart';
import 'package:get_page_example/pages/get_page_example/Jill/jill_warper.dart';
import 'package:get_page_example/pages/get_page_example/Judy/judy_warper.dart';
import 'package:get_page_example/pages/get_page_example/Monica/monica_warper.dart';
import 'package:get_page_example/pages/get_page_example/Rachel/rachel_warper.dart';
import 'package:get_page_example/pages/get_page_example/Ross/ross_warper.dart';
import 'package:get_page_example/pages/get_page_example/Sandra/sandra_warper.dart';
import 'package:get_page_example/pages/get_page_example/gellers/gellers_warper.dart';
import 'package:get_page_example/pages/get_page_example/greens/greens_warper.dart';
import 'package:get_page_example/routes/middlewares/auth_middleware.dart';

class GetPageExample {
  static final theGreens = GetPage(
      name: '/greens',
      title: 'GetPage & GetMiddleware (Greens)',
      page: () => GreensView(),
      binding: GreensBinding(),
      middlewares: [
        AuthMiddleware()
      ],
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
      title: 'GetPage & GetMiddleware (Gellers)',
      page: () => GellersView(),
      binding: GellersBinding(),
      middlewares: [
        AuthMiddleware()
      ],
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
