# get_page_example

 The new features to getx.

- [get_page_example](#get_page_example)
  - [GetPage Children](#getpage-children)
  - [GetPage Middleware](#getpage-middleware)

## GetPage Children

lets say we have tow families:

    - The Greens
    - The Gellers

So the Family tree will be like this:

![tree](./FamilyTree.PNG)

and with `GetPage` we can represent the Gellers tree like this.

```dart
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
```
or with the new children feature
```dart
 GetPage(
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
      ])
```
So with any small change on any father in the tree all children will be updated.

## GetPage Middleware