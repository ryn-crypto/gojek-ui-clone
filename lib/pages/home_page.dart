import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone_ui/components/header.dart';
import 'package:gojek_clone_ui/datas/icons.dart';
import 'package:gojek_clone_ui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: green2,
          elevation: 0,
          toolbarHeight: 71,
          title: const Header()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: const Color(0xFFE8E8E8))),
                      child: Row(children: [
                        SvgPicture.asset(
                          'assets/icons/search.svg',
                          color: dark1,
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Cari layanan, makanan, & tujuan',
                          style: regular14.copyWith(color: dark3),
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35 / 2)),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35 / 2),
                                  color: const Color(0xFFD1E7EE)),
                              clipBehavior: Clip.hardEdge,
                              child: SvgPicture.asset(
                                'assets/icons/goclub.svg',
                                color: blue3,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
            // Gopay
            ,
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                    color: blue1, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xFFBBBBBB),
                                borderRadius: BorderRadius.circular(1)),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1)),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 8)),
                    Column(
                      children: [
                        Container(
                          height: 11,
                          width: 118,
                          decoration: const BoxDecoration(
                              color: Color(0xfff9ccddb),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(8))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 68,
                          width: 127,
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/gopay.png',
                                  height: 14,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Rp.12.379',
                                  style: bold16.copyWith(color: dark1),
                                ),
                                Text(
                                  'Klik & Cek riwayat',
                                  style: semibold12_5.copyWith(color: green1),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    ...gopayIcons.map((icon) => Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: SvgPicture.asset(
                                    'assets/icons/${icon.icon}.svg',
                                    color: blue1),
                              ),
                              SizedBox(height: 7),
                              Text(
                                icon.title,
                                style: semibold14.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
