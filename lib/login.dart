import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/facebooktampilan.dart';
import 'package:flutter_application_1/logingmail.dart';
import 'package:get/get.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD569),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 110,
          ),
          child: Column(
            children: [
              Container(height: 150,width: 150,child: ClipRRect(child: Image.asset("assets/pngwing.png"),),),
              Text(
                'PET Adopt Mobile',
                style: TextStyle(fontSize: 24),
              ),
              Text("Adopsi Hewan Peliharaan dengan"),
              Text('Mudah dan Praktis'),
              SizedBox(
                height: 350,
              ),
              InkWell(
                onTap: () => Get.to(Gmail()),
                child: Container(
                  height: 47,
                  width: 269,
                  decoration: BoxDecoration(
                      color: Color(0xffECD4D4),
                      borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Image.asset("assets/google.png"),
                            SizedBox(width: 20,),
                            Text("Masuk Dengan Google",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                ),
              ),
              SizedBox(height: 13,),
                InkWell(
                  onTap: () => Get.to(facebooktampilan()),
                  child: Container(
                  height: 47,
                  width: 269,
                  decoration: BoxDecoration(
                      color: Color(0xffECD4D4),
                      borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Image.asset("assets/facebook.png"),
                            SizedBox(width: 20,),
                            Text("Masuk Dengan Facebook",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                              ),
                ),
              SizedBox(height: 13,),
                Container(
                height: 47,
                width: 269,
                decoration: BoxDecoration(
                    color: Color(0xffECD4D4),
                    borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Icon(Icons.circle),
                          SizedBox(width: 20,),
                          Text("Masuk Dengan Nomor Seluler",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
