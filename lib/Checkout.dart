import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/pembayaran.dart';
import 'package:get/get.dart';

import 'beranda.dart';

class checkout extends StatelessWidget {

final tes = Get.find<beranda>();
  @override 
  Widget build(BuildContext context) {
    final index = Get.arguments;
    Get.lazyPut(() => beranda());
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios)),
              Text(
                "Pemesanan Saya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              )
            ],
          ),
          Container(
            height: 205,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 50),
                      height: 100,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.amber),
                      child: ClipRRect(
                          child: Image.network(
                "${tes.all[index].img}",
                fit: BoxFit.cover,
              )),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${tes.all[index].nama}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Jenis :${tes.all[index].Jenis}",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Umur : ${tes.all[index].umur}",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () => Get.to(Pembayaran()),
                  child: Center(
                    child: Container(
                      height: 28,
                      width: 222,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(),
                          color: Color(0xffFBE6B1)),
                    child: Center(child: Text("Bayar")),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
