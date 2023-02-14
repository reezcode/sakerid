import 'dart:ui';

import 'package:flutter/material.dart';
import '../style/theme.dart';

class LandingPage extends StatefulWidget{
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  bool isHover = false;
  bool isHover2 = false;
  bool isHover3 = false;

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200;

  @override
  Widget build(BuildContext context) {

    Widget formStart({
      required String title,
      required String description,
      required IconData icon,
    }) {
      return Row(
        children: [
          Icon(
            icon,
            size: 38,
            color: darkGrey,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleText.copyWith(
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                description,
                style: miniSubText,
              )
            ],
          )
        ],
      );
    }

    Widget buttonColor(String title){
     return MouseRegion(
       onHover: (s) {
         setState((){
           isHover2 = true;
         });
       },
       onExit: (s) {
         setState((){
           isHover2 = false;
         });
       },
       child: AnimatedContainer(
         width: 162,
         height: 44,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
             color: (isHover2)
                 ? darkBlue
                 : blue
         ),
         duration: Duration(milliseconds: 100),
         child: Center(
           child: Padding(
             padding: const EdgeInsets.only(bottom: 1.5),
             child: Text(
               title,
               style: subTitleText.copyWith(
                   fontWeight: FontWeight.w700,
                   color: white
               ),
             ),
           ),
         ),
       ),
     );
    }

    Widget buttonOutline(String title){
      return MouseRegion(
        onHover: (s) {
          setState((){
            isHover = true;
          });
        },
        onExit: (s) {
          setState((){
            isHover = false;
          });
        },
        child: AnimatedContainer(
          width: 129,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: (isHover)
                ? Border.all(color: Colors.transparent)
                : Border.all(color: darkGrey, width: 2,),
            color: (isHover)
                ? blue
                : Colors.transparent
          ),
          duration: Duration(milliseconds: 100),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1.5),
              child: Text(
                title,
                style: (isHover)
                    ? subTitleText.copyWith(fontWeight: FontWeight.w700, color: white)
                    : subTitleText.copyWith(fontWeight: FontWeight.w700, color: darkGrey,),
              ),
            ),
          ),
        ),
      );
    }

    Widget navItem({
      required String title,
      required int index
    }) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: selectedIndex == index
                  ? menuDarkText
                  : menuText,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 36,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: selectedIndex == index
                    ? lightBlack
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: lightGrey,
        body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 80,
                  right: 80
                ),
                child: Column(
                  children: [
                    // NAVIGATION SECTION
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/logo.png',
                            width: 118,
                            height: 46,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 32),
                            width: 2,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffF3F3F3),
                            ),
                          ),
                          if(isDesktop(context))
                            Row(
                              children: [
                                navItem(
                                  title: 'Beranda',
                                  index: 0,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                navItem(
                                  title: 'Wisata',
                                  index: 1,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                navItem(
                                  title: 'Sejarah',
                                  index: 2,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                navItem(
                                  title: 'Budaya',
                                  index: 3,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                navItem(
                                  title: 'Kontak',
                                  index: 4,
                                ),
                              ],
                            ),
                            Spacer(),
                            buttonOutline(
                                (isDesktop(context))
                                    ? 'Masuk'
                                    : 'Menu'
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Stack(
                      children: [
                        Container(
                        width: MediaQuery.of(context).size.width,
                        height: 700,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/hero.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 120,
                            ),
                            Text(
                              'Jelajahi',
                              style: bigText,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'kekayaan alam di Indonesia',
                              style: taglineText,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '#JelajahIndonesia',
                              style: hashtagText,
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            buttonColor('Cari tiket'),
                            SizedBox(
                              height: 150,
                            ),
                          ],
                        ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 255,
                          margin: EdgeInsets.only(
                            top: 550,
                            left: 70,
                            right: 70
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.03),
                                blurRadius: 20,
                                spreadRadius: 5,
                                offset: const Offset(0,10),
                              )
                            ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 45,
                              vertical: 30
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cari Tiket',
                                  style: titleText,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Temukan tujuan perjalananmu melalui Saker.id',
                                  style: subTitleText,
                                ),
                                isDesktop(context)
                                    ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 36,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        formStart(
                                            title: 'Lokasi Wisata',
                                            description: 'Temukan lokasi yang ingin dikunjungi',
                                            icon: Icons.near_me_outlined
                                        ),
                                        formStart(
                                            title: 'Tanggal',
                                            description: 'Tentukan tanggal  kapan kamu pergi',
                                            icon: Icons.calendar_month_outlined
                                        ),
                                        formStart(
                                            title: 'Jumlah Orang',
                                            description: 'Berapa banyak orang yang akan ikut?',
                                            icon: Icons.group_outlined
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        MouseRegion(
                                          onHover: (s) {
                                            setState((){
                                              isHover3 = true;
                                            });
                                          },
                                          onExit: (s) {
                                            setState((){
                                              isHover3 = false;
                                            });
                                          },
                                          child: Image.asset(
                                            (isHover3)
                                                ? 'images/icon_searchHovered.png'
                                                : 'images/icon_search.png',
                                            width: 48,
                                            height: 48,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                                    : Column(
                                  children: [
                                    Text('Ini Mobile')
                                  ],
                                )
                              ],
                            )
                          )
                        )
                      ]
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}