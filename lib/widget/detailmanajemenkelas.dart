import 'package:finalproject/components/sidebar.dart';
import 'package:finalproject/main.dart';
import 'package:finalproject/tes.dart';
import 'package:finalproject/widget/admin_atas.dart';
import 'package:finalproject/widget/manajemenuser.dart';
import 'package:finalproject/widget/orderkelas.dart';
import 'package:finalproject/widget/progreskelas.dart';
import 'package:finalproject/widget/sidebaritem.dart';
import 'package:finalproject/widget/tambahkelas.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DetailManajemenKelas extends StatelessWidget {
  DetailManajemenKelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detail Manajemen Kelas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Detail Manajemen Kelas'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
                // crossAxisAlignment: CrossAxisAlignment.center,
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
                  SidebarItem(
                    logo: 'assets/icons/i1.png',
                    namaItem: 'Manajemen Kelas',
                    pageToNavigate: ManajemenKelas(),
                    warna: Colors.white,
                    warnaTeks: Colors.blue,
                  ),
                  SidebarItem(
                    logo: 'assets/icons/i2.png',
                    namaItem: 'Tambah Kelas',
                    pageToNavigate: TambahKelas(),
                    warna: Color.fromRGBO(2, 69, 122, 1),
                    warnaTeks: Colors.white,
                  ),
                  SidebarItem(
                    logo: 'assets/icons/i3.png',
                    namaItem: 'Progres Per Kelas',
                    pageToNavigate: ProgresPage(),
                    warna: Color.fromRGBO(2, 69, 122, 1),
                    warnaTeks: Colors.white,
                  ),
                  SidebarItem(
                    logo: 'assets/icons/i4.png',
                    namaItem: 'Order Kelas',
                    pageToNavigate: OrderKelas(),
                    warna: Color.fromRGBO(2, 69, 122, 1),
                    warnaTeks: Colors.white,
                  ),
                  SidebarItem(
                    logo: 'assets/icons/i5.png',
                    namaItem: 'Manajemen User',
                    pageToNavigate: ManajemenUser(),
                    warna: Color.fromRGBO(2, 69, 122, 1),
                    warnaTeks: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 50, right: 40, bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdminAtas(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text("Manajemen Kelas > "),
                      Text(
                        "Kelas Flutter",
                        style: TextStyle(
                            color: canvasColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jadwal Bootcamp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32),
                          ),
                          Container(
                            width: 500,
                            child: TableCalendar(
                              firstDay: DateTime.utc(2010, 10, 16),
                              lastDay: DateTime.utc(2030, 3, 14),
                              focusedDay: DateTime.now(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Progress Peserta",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32),
                          ),
                          Container(
                            width: 600,
                            child: LineChartSample2(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Container(
                  //       width: 100,
                  //       height: 100,
                  //       child: ClipRRect(
                  //         child: Image.asset('assets/images/pidibaiq.jpg'),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Peserta(
                    img: 'assets/images/pidibaiq.jpg',
                    nama: "Ikhwanul Rafi",
                  ),
                  Peserta(
                    img: 'assets/images/pidibaiq.jpg',
                    nama: "Ikhwanul Arif",
                  ),
                  Peserta(
                    img: 'assets/images/pidibaiq.jpg',
                    nama: "M. Azzukhruf",
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class Peserta extends StatelessWidget {
  const Peserta({super.key, this.img, this.nama});

  final String? img;
  final String? nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 223, 223, 223),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        leading: CircleAvatar(
          backgroundImage: AssetImage(img.toString()),
          radius: 20,
        ),
        title: Text(nama.toString()),
      ),
    );
  }
}
