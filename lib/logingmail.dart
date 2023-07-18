import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/beranda.dart';
import 'package:get/get.dart';

class Gmail extends StatelessWidget {
  const Gmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD569),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 196,
          ),
          child: Column(
            children: [
                Container(height: 100,width: 150,child: ClipRRect(child: Image.asset("assets/pngwing.png"),),),
              Text(
                'PET Adopt Mobile',
                style: TextStyle(fontSize: 24),
              ),
              Text("Adopsi Hewan Peliharaan dengan"),
              Text('Mudah dan Praktis'),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 47,
                width: 269,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffECD4D4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    
                    decoration: InputDecoration(
                    hintText: 'Masukkan email',
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 47,
                width: 269,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffECD4D4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan password',
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFBF1A)),onPressed: () => Get.to(beranda()), child: Text("Masuk",style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
