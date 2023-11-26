import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'adddata.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(
                left: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => adddata()),
          );
              },
              child: Text("Add Data +"),
            ),
          ),
          SizedBox(height: 10),
          DataTable(
            columns: [
              DataColumn(label: Text('Foto')),
              DataColumn(label: Text('Nama Produk')),
              DataColumn(label: Text('Harga')),
              DataColumn(label: Text('Aksi')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                    Image.asset('images/burger.jpg', height: 50, width: 50)),
                DataCell(Text('Burger king medium')),
                DataCell(Text('Rp.50.000,00')),
                DataCell(IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                )),
              ]),
            ],
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.person, color: Colors.black),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
      ),
    );
  }
}
