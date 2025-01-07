import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'progreskelas.dart';
import 'tambahkelas.dart';

class RincianProgres extends StatelessWidget {
  const RincianProgres({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
                        "Progres per Kelas > ",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "Kelas Front End > ",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "Ikhwanul Rafi",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(2, 69, 122, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Progress Kelas Aktif",
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Color.fromRGBO(2, 69, 122, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey, // Warna border putih
                                width: 1, // Lebar border
                              ),
                              borderRadius: BorderRadius.circular(
                                  8.0), // Radius sudut border
                            ),
                            height: 500,
                            width: 150, // Mengatur tinggi border menjadi 300
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: SfCircularChart(
                                          series: <CircularSeries>[
                                            DoughnutSeries<_PieData, String>(
                                              dataSource: _getChartData(),
                                              xValueMapper:
                                                  (_PieData data, _) =>
                                                      data.xData,
                                              yValueMapper:
                                                  (_PieData data, _) =>
                                                      data.yData,
                                              dataLabelMapper:
                                                  (_PieData data, _) =>
                                                      data.text,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        'Kehadiran',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left:
                                              35.0), // Spasi antara "Status" dan "%"
                                      child: Text(
                                        "Status",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Spacer(), // Spacer untuk mengisi ruang kosong
                                    Padding(
                                      padding: EdgeInsets.only(right: 35),
                                      child: Text(
                                        "%",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey, // Warna garis divider
                                  thickness: 1, // Ketebalan garis divider
                                  height: 0, // Ketinggian garis divider
                                  indent:
                                      35, // Panjang indent dari sisi kiri garis
                                  endIndent:
                                      35, // Panjang indent dari sisi kanan garis
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color: Colors.blue, // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Hadir",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "62.5%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color:
                                                Colors.pink[900], // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Izin",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "25%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color: Colors.red, // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Absen",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "12.5%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
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
                        const SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey, // Warna border putih
                                width: 1, // Lebar border
                              ),
                              borderRadius: BorderRadius.circular(
                                  8.0), // Radius sudut border
                            ),
                            height: 500,
                            width: 150, // Mengatur tinggi border menjadi 300
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: SfCircularChart(
                                          series: <CircularSeries>[
                                            DoughnutSeries<_PieData, String>(
                                              dataSource: _getChartData(),
                                              xValueMapper:
                                                  (_PieData data, _) =>
                                                      data.xData,
                                              yValueMapper:
                                                  (_PieData data, _) =>
                                                      data.yData,
                                              dataLabelMapper:
                                                  (_PieData data, _) =>
                                                      data.text,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        'Tugas',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left:
                                              35.0), // Spasi antara "Status" dan "%"
                                      child: Text(
                                        "Status",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Spacer(), // Spacer untuk mengisi ruang kosong
                                    Padding(
                                      padding: EdgeInsets.only(right: 35),
                                      child: Text(
                                        "%",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey, // Warna garis divider
                                  thickness: 1, // Ketebalan garis divider
                                  height: 0, // Ketinggian garis divider
                                  indent:
                                      35, // Panjang indent dari sisi kiri garis
                                  endIndent:
                                      35, // Panjang indent dari sisi kanan garis
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color: Colors.blue, // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Individu",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "62.5%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color:
                                                Colors.pink[900], // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Kelompok",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "25%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color: Colors.red, // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Proyek",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "12.5%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
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
                        const SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey, // Warna border putih
                                width: 1, // Lebar border
                              ),
                              borderRadius: BorderRadius.circular(
                                  8.0), // Radius sudut border
                            ),
                            height: 500,
                            width: 150, // Mengatur tinggi border menjadi 300
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: SfCircularChart(
                                          series: <CircularSeries>[
                                            DoughnutSeries<_PieData, String>(
                                              dataSource: _getChartData(),
                                              xValueMapper:
                                                  (_PieData data, _) =>
                                                      data.xData,
                                              yValueMapper:
                                                  (_PieData data, _) =>
                                                      data.yData,
                                              dataLabelMapper:
                                                  (_PieData data, _) =>
                                                      data.text,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        'Test',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left:
                                              35.0), // Spasi antara "Status" dan "%"
                                      child: Text(
                                        "Status",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Spacer(), // Spacer untuk mengisi ruang kosong
                                    Padding(
                                      padding: EdgeInsets.only(right: 35),
                                      child: Text(
                                        "%",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey, // Warna garis divider
                                  thickness: 1, // Ketebalan garis divider
                                  height: 0, // Ketinggian garis divider
                                  indent:
                                      35, // Panjang indent dari sisi kiri garis
                                  endIndent:
                                      35, // Panjang indent dari sisi kanan garis
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color: Colors.blue, // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Tulis",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "62.5%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color:
                                                Colors.pink[900], // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Lisan",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "25%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  35.0), // Spasi antara titik dan teks "Hadir"
                                          child: Icon(
                                            Icons
                                                .circle, // Menggunakan ikon lingkaran
                                            color: Colors.red, // Warna biru
                                            size: 10, // Ukuran lingkaran
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Spasi antara titik dan teks "Hadir"
                                        Text(
                                          "Absen",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Spacer(), // Spacer untuk mengisi ruang kosong
                                        Padding(
                                          padding: EdgeInsets.only(right: 35),
                                          child: Text(
                                            "12.5%",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
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
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
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

  List<_PieData> _getChartData() {
    final List<_PieData> chartData = <_PieData>[
      _PieData('Category 1', 62.5, 'Label 1'),
      _PieData('Category 2', 25, 'Label 2'),
      _PieData('Category 3', 12.5, 'Label 3'),
    ];
    return chartData;
  }
}

class _PieData {
  _PieData(this.xData, this.yData, this.text);
  final String xData;
  final num yData;
  final String text;
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
