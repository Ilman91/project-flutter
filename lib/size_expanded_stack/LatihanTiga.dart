import 'package:flutter/material.dart';

class LatihanTiga extends StatelessWidget {
  const LatihanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Text("Pemasukan++"),
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Text("Pengeluaran"),
              color: const Color.fromARGB(255, 72, 243, 33),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Text("Saldo"),
              color: const Color.fromARGB(255, 243, 194, 33),
            ),
          ),
        ],
      ),
    );
  }
}
