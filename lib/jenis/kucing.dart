import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/detailbinatang.dart';
import 'package:flutter_application_1/maps.dart';
import 'package:flutter_application_1/model.dart';
import 'package:flutter_application_1/model2.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:get/get.dart';

class Jenis extends StatelessWidget {
  List<modelBinatang> all = [
    modelBinatang(
        nama: "Gery",
        Jenis: 'chihuahua',
        umur: 'Puppy',
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvEqpnG1rO8JG57wRnXLvp9qMw5bGGSlVS8A&usqp=CAU",
        Timbangan: 4,
        Warna: 'gold',
        Kelamin: 'jantan',
        jarak: '3 KM'),
    modelBinatang(
        nama: "Bembeng",
        Jenis: 'Persia',
        umur: 'Adult',
        img:
            "https://asset.kompas.com/crops/C7FO7q6cGnkNfd1X3qLuEczFhf0=/0x0:612x408/750x500/data/photo/2023/03/04/6402dfca4c83b.jpeg",
        Timbangan: 8,
        Warna: 'Putih',
        Kelamin: 'betina',
        jarak: '120 KM'),
   
    modelBinatang(
        nama: "Ewey",
        Jenis: 'Sphinix',
        umur: 'Puppy',
        img:
            "https://asset-2.tstatic.net/jogja/foto/bank/images/kucing-sphynx_20151213_161613.jpg",
        Timbangan: 3,
        Warna: 'kulit',
        Kelamin: 'Betina',
        jarak: '1200 KM')
  ];

  List<modelfilter> alllist = [
    modelfilter(
        title: "Kucing",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKV-jQk61oz5FYESQhKH8NA4h1VZyQFP0Qig&usqp=CAU"),
    modelfilter(
        title: "Ikan",
        img:
            "https://img.lovepik.com/free-png/20211216/lovepik-goldfish-line-drawing-png-image_401693093_wh1200.png"),
    modelfilter(
        title: "Anjing",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvNudOlE-Ofb3jhe1AsbwKLaJqxph3EAfEiA&usqp=CAU"),
    modelfilter(
        title: "Burung",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWvekAkpXfW8nI5PThSCCLVXINr-sRP1mxZQ&usqp=CAU")
  ];

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => Jenis());
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(
                height: Get.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.9,
                            crossAxisCount: 2,
                          ),
                          itemCount: all.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () =>
                                  Get.to(Detailbinatang(), arguments: index),
                              child: Container(
                                margin: EdgeInsets.only(left: 8, top: 20),
                                height: 60,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.amber.shade700),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 110,
                                        width: Get.width,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            "${all[index].img}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text("${all[index].umur}")),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          "${all[index].nama}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          "${all[index].Jenis}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey),
                                        ),
                                      )
                                    ]),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
