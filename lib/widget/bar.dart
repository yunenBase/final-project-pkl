import 'package:finalproject/components/sidebar.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 232, 232, 232),
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      margin: EdgeInsets.only(top: 30, bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.computer,
                size: 24.0,
                color: canvasColor,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Manajemen Kelas",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: canvasColor),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 300,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Cari Kelas...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.zero,
                        bottomRight: Radius.zero,
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    bottomLeft: Radius.zero,
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.blue,
                ),
                width: 45,
                height: 45,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
