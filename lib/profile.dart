import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          title: Text(
            "profile",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              height: 180,
              width: Get.width,
              decoration: BoxDecoration(border: Border.all()),
              child: Center(
                  child: Icon(
                Icons.people,
                size: 60,
              )),
            ),
            Container(
              height: 47,
              width: Get.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xffFFD569)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Erick",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 47,
              width: Get.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xffFFD569)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Atur Sekarang",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600)),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 47,
              width: Get.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xffFFD569)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("pria",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600)),
                        Icon(Icons.arrow_forward_ios_outlined),
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
             Container(
              height: 47,
              width: Get.width,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black),color: Color(0xffFFD569)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Tanggal Lahir",style: TextStyle(fontWeight: FontWeight.bold),), Row(
                    children: [
                      Text("10-04-2001",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600)),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  )],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
