import 'package:finalproject/widget/detailmanajemenkelas.dart';
import 'package:finalproject/widget/manajemenuser.dart';
import 'package:finalproject/widget/orderkelas.dart';
import 'package:finalproject/widget/progreskelas.dart';
import 'package:finalproject/widget/sidebaritem.dart';
import 'package:flutter/material.dart';
import 'widget/admin_atas.dart';
import 'widget/bar.dart';
import 'widget/card_kelas_aktif.dart';
import 'widget/card_kelas_selesai.dart';
import 'widget/tambahkelas.dart';

void main() {
  runApp(ManajemenKelas());
}

class ManajemenKelas extends StatelessWidget {
  const ManajemenKelas({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Admin Comentor',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DetailManajemenKelas());
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
              padding:
                  EdgeInsets.only(top: 30, left: 30, right: 40, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdminAtas(),
                  Bar(),
                  Row(
                    children: [
                      Text(
                        "Manajemen Kelas",
                      ),
                    ],
                  ),
                  Kelas(
                    statusKelas: "Kelas Aktif",
                  ),
                  Scrollbar(
                    trackVisibility: true,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          KelasAktif(
                            namaKelas: "Kelas Futter",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.6,
                            persenProgres: "60%",
                          ),
                          KelasAktif(
                            namaKelas: "Kelas Phyton",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.7,
                            persenProgres: "70%",
                          ),
                          KelasAktif(
                            namaKelas: "Kelas Front End",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.87,
                            persenProgres: "87%",
                          ),
                          KelasAktif(
                            namaKelas: "Kelas Back End",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.45,
                            persenProgres: "45%",
                          ),
                          KelasAktif(
                            namaKelas: "Kelas Front End",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.6,
                            persenProgres: "60%",
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Kelas(
                    statusKelas: "Kelas Selesai",
                  ),
                  Scrollbar(
                    trackVisibility: true,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          KelasSelesai(
                            namaKelas: "Kelas Futter",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.6,
                            persenProgres: "60%",
                          ),
                          KelasSelesai(
                            namaKelas: "Kelas Phyton",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.7,
                            persenProgres: "70%",
                          ),
                          KelasSelesai(
                            namaKelas: "Kelas Front End",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.87,
                            persenProgres: "87%",
                          ),
                          KelasSelesai(
                            namaKelas: "Kelas Back End",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.45,
                            persenProgres: "45%",
                          ),
                          KelasSelesai(
                            namaKelas: "Kelas Front End",
                            jumlahPeserta: "40 Peserta",
                            persen: 0.6,
                            persenProgres: "60%",
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

class Kelas extends StatelessWidget {
  const Kelas({super.key, this.statusKelas});

  final String? statusKelas;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            statusKelas.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
