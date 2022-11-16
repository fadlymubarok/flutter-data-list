import 'package:flutter/material.dart';
import 'data_product.dart';

class Detail extends StatefulWidget {
  const Detail(
      {Key? key,
      required this.file_gambar,
      required this.judul,
      required this.harga,
      required this.deskripsi})
      : super(key: key);

  // final DataProduct data;
  final String file_gambar;
  final String judul;
  final String harga;
  final String deskripsi;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text("Product Detail",
                  style: TextStyle(color: Colors.black))),
          backgroundColor: Colors.pink.shade100,
        ),
        body: ListView(
          children: [
            Container(
              width: 200,
              margin: EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(widget.file_gambar, fit: BoxFit.cover),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(widget.judul,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      widget.harga,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                      width: 400,
                      // padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.only(left: -10),
                      child: Text(widget.deskripsi))
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.black12,
          child: OutlinedButton(
            onPressed: () => {_showDialog(context, widget.judul)},
            child: Text("Add to Cart",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold)),
          ),
        ));
  }

  _showDialog(BuildContext context, String judul) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text("Masukkk"),
              content: Text(judul + " Berhasil ditambahkan"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Ok!")),
              ],
            ));
  }
}
