import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/detailbinatang.dart';
import 'package:flutter_application_1/jenis/kucing.dart';
import 'package:flutter_application_1/maps.dart';
import 'package:flutter_application_1/model.dart';
import 'package:flutter_application_1/model2.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:get/get.dart';

class beranda extends StatelessWidget {
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
        nama: "Floppy",
        Jenis: 'Kakak Tua',
        umur: 'Adult',
        img:
            "https://www.jalaksuren.net/wp-content/uploads/2017/08/Gambar-Burung-Kakak-Tua-dan-Berbagai-Macam-Jenisnya.webp",
        Timbangan: 2,
        Warna: 'putih',
        Kelamin: 'jantan',
        jarak: '1 KM'),
    modelBinatang(
        nama: "Rahamaz",
        Jenis: 'Arwana',
        umur: 'Adult',
        img: "https://mmc.tirto.id/image/otf/1024x535/2019/12/02/arwana.jpg",
        Timbangan: 2,
        Warna: 'red',
        Kelamin: 'Bencong',
        jarak: '51 KM'),
    modelBinatang(
        nama: "Mimim",
        Jenis: 'Buldog',
        umur: 'Puppy',
        img:
            "https://asset.kompas.com/crops/FtgR1HeSCrOP0nYcVq81C4-hUkw=/67x55:1806x1215/750x500/data/photo/2021/03/21/6056bfa61251c.jpg",
        Timbangan: 6,
        Warna: 'gold',
        Kelamin: 'jantan',
        jarak: '64 KM'),
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
    Get.lazyPut(() => beranda());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.to(maps()),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20)),
                        width: 310,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Medan, North Sumatera")
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(profile()),
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(Icons.people_alt_rounded)),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    width: 500,
                    height: 60,
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              suffixIcon: Icon(Icons.search)),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: () =>Get.to(Jenis()),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: alllist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              height: 80,
                              width: 90,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.amber.shade700),
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                child: Image.network("${alllist[index].img}"),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${alllist[index].title}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () => Get.to(Detailbinatang(), arguments: index),
                            child: Container(
                              margin: EdgeInsets.only(left: 8, top: 20),
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber.shade700),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 110,
                                      width: Get.width,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          "${all[index].img}",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10, top: 10),
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.circular(10)),
                                      child:
                                          Center(child: Text("${all[index].umur}")),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        "${all[index].nama}",
                                        style:
                                            TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
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
            )
          ],
        ),
      ),
    );
  }
}
