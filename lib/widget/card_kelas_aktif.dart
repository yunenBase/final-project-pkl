import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../components/sidebar.dart';

class KelasAktif extends StatelessWidget {
  const KelasAktif(
      {super.key,
      this.jumlahPeserta,
      this.namaKelas,
      this.persenProgres,
      this.persen});

  final String? namaKelas;
  final String? jumlahPeserta;
  final String? persenProgres;
  final double? persen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: MaterialStateMouseCursor.clickable,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Container()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 229, 103, 246),
                Color.fromARGB(255, 198, 159, 96),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              namaKelas.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              jumlahPeserta.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                LinearPercentIndicator(
                  width: 370,
                  animation: true,
                  lineHeight: 14.0,
                  animationDuration: 2500,
                  percent: persen ?? 0,
                  progressColor: canvasColor,
                  barRadius: Radius.circular(20),
                  padding: EdgeInsets.only(left: 0, right: 10),
                ),
                Text(
                  persenProgres.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
