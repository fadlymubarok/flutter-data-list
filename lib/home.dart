import 'package:flutter/material.dart';
import 'data_product.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Product List", style: TextStyle(color: Colors.black))),
        leading: const Icon(Icons.flutter_dash, color: Colors.black),
        actions: const [Icon(Icons.search)],
        backgroundColor: Colors.pink.shade100,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 0, 10),
            child: Text(
              "Lotte Pasar Rebo",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 10),
            child: Expanded(
                child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(
                  dataPasarRebo.length,
                  (index) => InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail(
                                      file_gambar:
                                          dataPasarRebo[index].file_gambar,
                                      judul: dataPasarRebo[index].judul,
                                      harga: dataPasarRebo[index].harga,
                                      deskripsi:
                                          dataPasarRebo[index].deskripsi)));
                        },
                        child: Card(
                            color: Colors.transparent,
                            shadowColor: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    dataPasarRebo[index].file_gambar,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(dataPasarRebo[index].judul,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Text(
                                      dataPasarRebo[index].harga,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      )),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 0, 10),
            child: Text(
              "Lotte Pakansari",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 10),
            child: Expanded(
                child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(
                  dataPakansari.length,
                  (index) => InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail(
                                      file_gambar:
                                          dataPakansari[index].file_gambar,
                                      judul: dataPakansari[index].judul,
                                      harga: dataPakansari[index].harga,
                                      deskripsi:
                                          dataPakansari[index].deskripsi)));
                        },
                        child: Card(
                            color: Colors.transparent,
                            shadowColor: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    dataPakansari[index].file_gambar,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(dataPakansari[index].judul,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Text(
                                      dataPakansari[index].harga,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      )),
            )),
          ),
        ],
      ),
    );
  }
}
