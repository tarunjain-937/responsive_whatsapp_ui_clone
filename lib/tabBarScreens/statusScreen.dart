import 'package:flutter/material.dart';

import '../utilities/info.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: "Make a message",
        elevation: 13,
        child: Icon(Icons.camera_alt_rounded,color: Colors.white),
        backgroundColor: Color(0xff075e55),

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Stack(
                children: [

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color:Colors.grey,width: 3)),
                            padding: EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("lib/img1.jpg",height: 55,width: 55,fit: BoxFit.cover,),
                            ),
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("My Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 6),
                            Text("Tap to add status updates",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                          ],
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: 47,
                    left: 54,
                    child:   CircleAvatar(
                      backgroundColor: Color(0xff075e55),
                      radius: 13,
                      child: Container(
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:Border.all(width:1,color: Colors.white)
                          ),
                          child: Icon(Icons.add,color: Colors.white,)),
                    ),
                  )
                ],
              ),


              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12),
                child: Text("Recents updates",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              ),


              ///=========================================
              ListView.builder(
                shrinkWrap: true,
                itemCount: info.length ~/2 ,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text(info[index]["name"].toString(), style: TextStyle(fontSize: 18),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Row(
                          children: [
                            Text("Today", style: TextStyle(fontSize: 15),),
                            SizedBox(width: 15),
                            Text(info[index]["time"].toString(), style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                      leading: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color:Colors.lightGreen,width: 3)),
                        padding: EdgeInsets.all(1),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(info[index]["profilePic"].toString()),

                        ),
                      ),
                    ),
                  );
                },),
              ///=========================================


              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12),
                child: Text("Viewed updates",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              ),


              ///============================================
              ListView.builder(
                shrinkWrap: true,
                itemCount: info.length ~/2 ,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text(info[index]["name"].toString(), style: TextStyle(fontSize: 18),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Row(
                          children: [
                            Text("Today", style: TextStyle(fontSize: 15),),
                            SizedBox(width: 15),
                            Text(info[index]["time"].toString(), style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                      leading: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color:Colors.lightGreen,width: 3)),
                        padding: EdgeInsets.all(1),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(info[index]["profilePic"].toString()),

                        ),
                      ),
                    ),
                  );
                },),
              ///============================================

            ],
          ),
        ),
      ),
    );
  }
}
