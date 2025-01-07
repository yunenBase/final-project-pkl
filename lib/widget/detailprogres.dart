// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:finalproject/widget/rincianprogres.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'progreskelas.dart';
import 'tambahkelas.dart';

class DetailProgres extends StatelessWidget {
  const DetailProgres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 250,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(2, 69, 122, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Divider(),
                    sidebarItem(
                      logo: 'assets/icons/i1.png',
                      namaItem: 'Manajemen Kelas',
                      warna: Color.fromRGBO(2, 69, 122, 1),
                      warnaTeks: Colors.white,
                    ),
                    sidebarItem(
                      logo: 'assets/icons/i2.png',
                      namaItem: 'Tambah Kelas',
                      pageToNavigate: TambahKelas(),
                      warna: Color.fromRGBO(2, 69, 122, 1),
                      warnaTeks: Colors.white,
                    ),
                    sidebarItem(
                      logo: 'assets/icons/i3.png',
                      namaItem: 'Progres Per Kelas',
                      pageToNavigate: ProgresPage(),
                      warna: Colors.white,
                      warnaTeks: Colors.blue,
                    ),
                    sidebarItem(
                      logo: 'assets/icons/i4.png',
                      namaItem: 'Order Kelas',
                      warna: Color.fromRGBO(2, 69, 122, 1),
                      warnaTeks: Colors.white,
                    ),
                    sidebarItem(
                      logo: 'assets/icons/i5.png',
                      namaItem: 'Manajemen User',
                      warna: Color.fromRGBO(2, 69, 122, 1),
                      warnaTeks: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/pidibaiq.jpg'),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pidi Baiq",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Admin",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Progres per Kelas > ",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "Kelas Front End",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(2, 69, 122, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Progress Kelas Aktif",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    // Tambahkan GestureDetector untuk container pertama
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            RincianProgres(), // Pindah ke halaman DetailProgres
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 232, 232),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     Text(
                          //       "Kelas Front End",
                          //       style: TextStyle(
                          //         fontSize: 33.0,
                          //         color: Colors.black,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     Spacer(),
                          //     Text(
                          //       "Presentase Kelas Aktif",
                          //       style: TextStyle(
                          //         fontSize: 24.0,
                          //         color: Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ikhwanul Rafi",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: new LinearPercentIndicator(
                                      width: 900,
                                      animation: true,
                                      lineHeight: 20.0,
                                      animationDuration: 2000,
                                      percent: 0.75,
                                      linearStrokeCap: LinearStrokeCap.round,
                                      progressColor:
                                          Color(int.parse('0xFF02457A')),
                                    ),
                                  ),
                                  Text(
                                    "75%",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Sisipkan GestureDetector untuk container kedua dan ketiga dengan fungsi navigasi yang sama
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailProgres(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 232, 232),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     Text(
                          //       "Kelas Back End",
                          //       style: TextStyle(
                          //         fontSize: 33.0,
                          //         color: Colors.black,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     Spacer(),
                          //     Text(
                          //       "Presentase Kelas Aktif",
                          //       style: TextStyle(
                          //         fontSize: 24.0,
                          //         color: Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ikhwanul Arif",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: new LinearPercentIndicator(
                                      width: 900,
                                      animation: true,
                                      lineHeight: 20.0,
                                      animationDuration: 2000,
                                      percent: 0.75,
                                      linearStrokeCap: LinearStrokeCap.round,
                                      progressColor:
                                          Color(int.parse('0xFF02457A')),
                                    ),
                                  ),
                                  Text(
                                    "75%",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RincianProgres(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 232, 232),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     Text(
                          //       "Kelas Front End",
                          //       style: TextStyle(
                          //         fontSize: 33.0,
                          //         color: Colors.black,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     Spacer(),
                          //     Text(
                          //       "Presentase Kelas Aktif",
                          //       style: TextStyle(
                          //         fontSize: 24.0,
                          //         color: Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "M. Azzukhruf",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: new LinearPercentIndicator(
                                      width: 900,
                                      animation: true,
                                      lineHeight: 20.0,
                                      animationDuration: 2000,
                                      percent: 0.75,
                                      linearStrokeCap: LinearStrokeCap.round,
                                      progressColor:
                                          Color(int.parse('0xFF02457A')),
                                    ),
                                  ),
                                  Text(
                                    "75%",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class sidebarItem extends StatelessWidget {
  const sidebarItem({
    Key? key,
    this.logo,
    this.namaItem,
    this.pageToNavigate,
    this.warna,
    this.warnaTeks,
  }) : super(key: key);

  final String? logo;
  final String? namaItem;
  final Widget? pageToNavigate;
  final Color? warna;
  final Color? warnaTeks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (pageToNavigate != null) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => pageToNavigate!,
            ));
          }
        },
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: warna,
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  logo.toString(),
                  width: 20.0,
                  fit: BoxFit.fill,
                  color: warnaTeks,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  namaItem.toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: warnaTeks,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
