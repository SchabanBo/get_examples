import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/complex/Amy/amy_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Ben/ben_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Emma/emmy_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Erica/erica_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Jack-Bing/jack_bing_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Jack/jack_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Jill/jill_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Judy/judy_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Monica/monica_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Rachel/rachel_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Ross/ross_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/Sandra/sandra_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/gellers/gellers_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/greens/greens_warper.dart';
import 'package:get_page_example/pages/get_page_example/complex/login/login_view.dart';
import 'package:get_page_example/pages/get_page_example/get_page.dart';
import 'package:get_page_example/pages/get_page_example/middlewares/auth_middleware.dart';

class GetPageExample {
  static GetPage getPageExample = GetPage(
      name: '/getPage',
      page: () => GetPageExampleView(),
      title: 'Get Page Examples',
      middlewares: [
        AuthMiddleware()
      ],
      children: [
        GetPage(name: '/login', title: 'Login', page: () => LoginView()),
        GetPageExample.theGreens,
        GetPageExample.theGellers,
      ]);

  static final theGreens = GetPage(
      name: '/greens',
      title: 'GetPage & GetMiddleware (Greens)',
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
      title: 'GetPage & GetMiddleware (Gellers)',
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
