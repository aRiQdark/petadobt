import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: Text(
          "Chat",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 90,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ucok"),
                      Text("Apakah hewannya masih ada?")
                    ],
                  ),
                  Container(
                    height: 20,
                  width: 20,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ),
             Container(
            margin: EdgeInsets.only(top: 15),
            height: 90,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sari"),
                      Text("Apakah hewannya masih ada?")
                    ],
                  ),
                  Container(
                    height: 20,
                  width: 20,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ),
             Container(
            margin: EdgeInsets.only(top: 15),
            height: 90,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Rani"),
                      Text("Apakah hewannya masih ada?")
                    ],
                  ),
                  Container(
                    height: 20,
                  width: 20,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ),
             Container(
            margin: EdgeInsets.only(top: 15),
            height: 90,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Rahmat"),
                      Text("Apakah hewannya masih ada?")
                    ],
                  ),
                  Container(
                    height: 20,
                  width: 20,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ),
             Container(
            margin: EdgeInsets.only(top: 15),
            height: 90,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ucok"),
                      Text("Apakah hewannya masih ada?")
                    ],
                  ),
                  Container(
                    height: 20,
                  width: 20,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ),
             Container(
            margin: EdgeInsets.only(top: 15),
            height: 90,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ucok"),
                      Text("Apakah hewannya masih ada?")
                    ],
                  ),
                  Container(
                    height: 20,
                  width: 20,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ),
             Container(
            margin: EdgeInsets.only(top: 15),
            height: 90,
            width: Get.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all()),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ucok"),
                      Text("Apakah hewannya masih ada?")
                    ],
                  ),
                  Container(
                    height: 20,
                  width: 20,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
