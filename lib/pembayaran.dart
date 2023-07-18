import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/beranda.dart';
import 'package:get/get.dart';

class Pembayaran extends StatelessWidget {
 
final tes = Get.find<beranda>();
  @override
  Widget build(BuildContext context) {
    final index = Get.arguments;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios)),
              Text(
                "CheckOut",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              )
            ],
          ),
          Container(
            height: 130,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Alamat Pengirim",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text("Janella Robinson | (+62)085380982612"),
                  Text("Jalan pelita II No.81"),
                  Text("Perjuangan (Janella Optik)"),
                  Text("Medan Perjuangan")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: Center(child: Text("Pemilik")),
              ),
              SizedBox(
                width: 10,
              ),
              Text("David Carles")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 20),
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(color: Colors.amber),
                        child: ClipRRect(
                            child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvEqpnG1rO8JG57wRnXLvp9qMw5bGGSlVS8A&usqp=CAU",
                          fit: BoxFit.cover,
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gery"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Jenis: Uciha hua"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Umur: 2 Tahun"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rp.3.500.00-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 130,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Opsi Pengiriman "),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_circle_right_outlined),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gojek"),
                          Text("Akan diterima sekitar 4-5 hari"),
                        ],
                      ),
                      Text("Rp.300000")
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_circle_right_outlined),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("J&T Express"),
                          Text("Akan diterima sekitar 4-5 hari"),
                        ],
                      ),
                      Text("Rp.200000")
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 130,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Metode Pembayaran",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_circle_right_outlined),
                      Text("Transfer Bank")
                    ],
                  ),
                  SizedBox(height: 10,),
                   Row(
                    children: [
                      Icon(Icons.arrow_circle_right_outlined),
                      Text("Ovo")
                    ],
                  ),SizedBox(height: 10,),
                   Row(
                    children: [
                      Icon(Icons.arrow_circle_right_outlined),
                      Text("Gopay")
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: Get.width,
        color: Colors.grey.shade400,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Total Pembayaran"),
                  Text("Rp.3.727.00")
                ],
              ),
            ),
            Container(
              height: 90,
              width: 130,
              color: Colors.amber.shade700,
              child: Center(child: Text("Buat Pemesanan",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
