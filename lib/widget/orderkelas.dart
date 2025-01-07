import 'package:finalproject/widget/manajemenuser.dart';
import 'package:finalproject/widget/tes.dart';
import 'package:flutter/material.dart';
import 'progreskelas.dart';
import 'tambahkelas.dart';
import 'package:flutter/rendering.dart';

class OrderKelas extends StatelessWidget {
  const OrderKelas({Key? key}) : super(key: key);
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
                      pageToNavigate: MyApp(),
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
                      warna: Colors.white,
                      warnaTeks: Colors.blue,
                    ),
                    sidebarItem(
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
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
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
                        "Order > ",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "Kelas A ",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromRGBO(2, 69, 122, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Color.fromRGBO(2, 69, 122, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Riwayat Order",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color.fromRGBO(2, 69, 122, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "Order Selesai",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "Pending",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            child: Row(
                              children: [
                                Icon(Icons.sort),
                                SizedBox(width: 8.0),
                                Text(
                                  "Sort",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            child: Row(
                              children: [
                                Icon(Icons.file_open_outlined),
                                SizedBox(width: 8.0),
                                Text(
                                  "Export",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Center(
                          child: DataTable(
                            // Tambahkan border dan atur warnanya
                            // Gunakan BorderSide untuk menentukan warna dan ketebalan border
                            // Ubah warna dan ketebalan sesuai kebutuhan Anda
                            // Misalnya, warna abu-abu dengan ketebalan 1.0
                            border:
                                TableBorder.all(color: Colors.grey, width: 1.0),
                            columns: <DataColumn>[
                              DataColumn(label: Text('Nama Pemesanan')),
                              DataColumn(label: Text('Kelas Pesanan')),
                              DataColumn(label: Text('Jumlah Pembayaran')),
                              DataColumn(label: Text('No Invoice')),
                              DataColumn(label: Text('Jumlah Pembayaran')),
                              DataColumn(label: Text('Bukti Pembayaran')),
                              DataColumn(label: Text('Aksi')),
                            ],
                            rows: List<DataRow>.generate(
                              7, // Ubah nilai ini sesuai dengan jumlah baris yang Anda inginkan
                              (index) => DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(
                                      'Nama $index')), // Ganti dengan data sesuai kebutuhan
                                  DataCell(Text(
                                      'Kelas $index')), // Ganti dengan data sesuai kebutuhan
                                  DataCell(Text(
                                      'Rp 100.000')), // Ganti dengan data sesuai kebutuhan
                                  DataCell(Text(
                                      'INV-$index')), // Ganti dengan data sesuai kebutuhan
                                  DataCell(Text(
                                      'Rp 100.000')), // Ganti dengan data sesuai kebutuhan
                                  DataCell(Text(
                                      'Bukti Pembayaran $index')), // Ganti dengan data sesuai kebutuhan
                                  DataCell(
                                    IconButton(
                                      icon: Icon(Icons.edit),
                                      onPressed: () {
                                        // Aksi ketika tombol edit ditekan
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 50,
                        width: 1090,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Row(
                          children: [
                            Text('1 - 11 of 100 Pages'),
                            SizedBox(
                                width: 20), // Spasi antara teks 1 dan teks 2
                            Spacer(),
                            SizedBox(
                                width: 20), // Spasi antara teks 2 dan teks 3
                            Text('This Page You Are On'),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12, // Ubah sesuai kebutuhan
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    5), // Untuk memberikan border radius
                                border: Border.all(
                                    color:
                                        Colors.grey), // Untuk memberikan border
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    5), // Untuk memberikan border radius
                                border: Border.all(
                                    color:
                                        Colors.grey), // Untuk memberikan border
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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
