import 'dart:core';

import 'package:flutter/material.dart';

import 'APiModel.dart';
import 'ServiceAPi.dart';
class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
 Welcome? obj;
 bool cheack=true;
 List<Welcome?> lst=[];

  @override
  void initState() {
    // TODO: implement initState
    loadPosts();
    super.initState();
  }
String str="https://bpj.scf.mybluehost.me/mylocalbusiness/uploads/flags/zm.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cheack? Center(child: CircularProgressIndicator()): SingleChildScrollView(
        child:  Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
                physics: PageScrollPhysics(),
                itemCount: obj?.data.length ?? 0,
                itemBuilder: (context, index){
              return  Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                  borderOnForeground: true,
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        Card(
                            elevation: 5,
                            child: SizedBox(
                                width: 100,
                                height: 150,
                                child: Image.network("${obj?.data[index]?.flag}",fit: BoxFit.cover,))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 20),
                              child: Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text("${obj?.data[index]?.countries_name ?? "dsf"}",style: TextStyle(fontSize: 15),maxLines: 3,overflow: TextOverflow.clip,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("${obj?.data[index]?.countries_id ?? " fdsf"}",style: TextStyle(fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("${obj?.data[index]?.country_code}",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("${obj?.data[index]?.countries_iso_code}",style: TextStyle(fontSize: 16),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),

    );
  }
  Future <void> loadPosts() async {
    RestClient restClient = RestClient();
    print("--Ram");

    final response=await restClient.getTasks();
    obj=response;
    if(obj!=null){
      cheack=false;
    }



    setState(() {
    });
  }
}
