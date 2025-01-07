// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:finalproject/main.dart';
import 'package:finalproject/widget/orderkelas.dart';
import 'package:flutter/material.dart';

import 'progreskelas.dart';
import 'tambahkelas.dart';

class ManajemenUser extends StatelessWidget {
  const ManajemenUser({Key? key}) : super(key: key);

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
                  sidebarItem(
                    logo: 'assets/icons/i1.png',
                    namaItem: 'Manajemen Kelas',
                    pageToNavigate: ManajemenKelas(),
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
                    warna: Color.fromRGBO(2, 69, 122, 1),
                    warnaTeks: Colors.white,
                  ),
                  sidebarItem(
                    logo: 'assets/icons/i4.png',
                    namaItem: 'Order Kelas',
                    pageToNavigate: OrderKelas(),
                    warna: Color.fromRGBO(2, 69, 122, 1),
                    warnaTeks: Colors.white,
                  ),
                  sidebarItem(
                    logo: 'assets/icons/i5.png',
                    namaItem: 'Manajemen User',
                    warna: Colors.white,
                    warnaTeks: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class sidebarItem extends StatelessWidget {
  const sidebarItem({
    Key? key,
    this.logo,
    this.namaItem,
    this.pageToNavigate, // Tambahkan properti baru untuk menentukan halaman tujuan
    this.warna,
    this.warnaTeks,
  }) : super(key: key);

  final String? logo;
  final String? namaItem;
  final Widget?
      pageToNavigate; // Buat properti Widget untuk menentukan halaman tujuan
  final Color? warna;
  final Color? warnaTeks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Navigasi ke halaman yang ditentukan
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
