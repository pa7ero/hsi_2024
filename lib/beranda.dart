import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Beranda extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BerandaState();
  }
}

class _BerandaState extends State<Beranda> {
  int _current = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = [
    Container(
      height: 500,
      width: 500,
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Image.asset(
          './assets/images/air.jpeg',
        ),
      ),
    ),
    Container(
      height: 500,
      width: 500,
      child: Image.asset('./assets/images/neraka.jpeg'),
    ),
    Container(
      height: 500,
      width: 500,
      child: Image.asset('./assets/images/pintu.jpeg'),
    ),
    Container(
      height: 500,
      width: 500,
      child: Image.asset('./assets/images/Hifzul.jpeg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'EDU HSI',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/HSI.png',
          ),
        ),
        leadingWidth: 50,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              'v.2401-2001',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
        titleSpacing: 10,
      ),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Assalamualaikum',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Ahmad Mundhofa',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('ARN231-20015'),
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 1.5,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageSliders.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(),
                );
              }).toList(),
            ),
            Center(
                child: AnimatedSmoothIndicator(
              activeIndex: _current,
              count: imageSliders.length,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Info Pendaftran',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black87.withOpacity(0.1), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.withOpacity(0.1),
                              //border: Border.all(
                              //  color: Colors.black87.withOpacity(0.1),
                              //  width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(Icons.info),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                    'Pendaftaran Program Hifzul Mutun Angkatan ke-03',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Bismillah',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                              'Pendataran Hifzul Mutun HSI Abdullah Roy Angkatan ke-3 telah dibuka',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Selengkapnya',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(223, 35, 123, 255),
                                fixedSize: Size(320, 40)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Evaluasi',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black87.withOpacity(0.1), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Kuis Majalah HSI Edisi 58',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('MAJALAH 1444H',
                            style: TextStyle(fontSize: 12)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 70,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.list,
                                    size: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 40,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '10 soal',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 160,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.timer_off_outlined,
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Rabu, 21 Februari 2024',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        '12:00',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Kerjakan',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(223, 35, 123, 255),
                              fixedSize: Size(320, 40)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
