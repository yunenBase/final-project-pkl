import 'package:finalproject/components/sidebar.dart';
import 'package:finalproject/main.dart';
import 'package:finalproject/widget/admin_atas.dart';
import 'package:finalproject/widget/manajemenuser.dart';
import 'package:finalproject/widget/orderkelas.dart';
import 'package:finalproject/widget/progreskelas.dart';
import 'package:finalproject/widget/sidebaritem.dart';
import 'package:flutter/material.dart';

class TambahKelas extends StatefulWidget {
  const TambahKelas({Key? key}) : super(key: key);

  @override
  State<TambahKelas> createState() => _TambahKelasState();
}

class _TambahKelasState extends State<TambahKelas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tambah Kelas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tambah Kelas'),
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
                    warna: Color.fromRGBO(2, 69, 122, 1),
                    warnaTeks: Colors.white,
                  ),
                  SidebarItem(
                    logo: 'assets/icons/i2.png',
                    namaItem: 'Tambah Kelas',
                    warna: Colors.white,
                    warnaTeks: Colors.blue,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AdminAtas(),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Tambah Kelas",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: canvasColor),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth:
                        500.0, // Atur lebar maksimum sesuai kebutuhan Anda
                  ),
                  child: Text(
                      "Silahkan masukkan data kelas yang ingin ditambahkan"),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Nama Kelas...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Nama Kelas...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 750,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Nama Kelas...',
                          suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 550,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Nama Kelas...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.save), // Icon disamping teks
                    label: Text('Save'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Warna latar belakang tombol
                      onPrimary: Colors.white, // Warna teks pada tombol
                    ), // Teks pada tombol
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
