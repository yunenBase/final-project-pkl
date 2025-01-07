import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  const SidebarItem({
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
