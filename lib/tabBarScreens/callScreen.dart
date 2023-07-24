import 'package:flutter/material.dart';
import '../utilities/info.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_call,color: Colors.white),
        elevation: 13,
        backgroundColor: Color(0xff075e55),
        tooltip:"Make a call",
      ),

      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          padding: EdgeInsets.all(2),
                          child: CircleAvatar(
                            backgroundColor: Color(0xff075e55),
                            radius: 30,
                            child: Icon(Icons.link,color: Colors.white,size: 30),
                          )
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Create call link",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 6),
                        Text("Share a link for your WhatsApp call",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                      ],
                    )
                  ],
                ),
              ),

              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12),
                child: Text("Recent",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              ),

              //====================================
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: info.length ~/2 +3,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){print("list tile");},
                      child: ListTile(
                        title: Text(info[index]["name"].toString(), style: TextStyle(fontSize: 18),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              Icon(Icons.call_received_sharp,color: Colors.lightGreen,),
                              SizedBox(width: 10),
                              Text(info[index]["time"].toString(), style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                        leading: InkWell(
                          onTap: (){print("circle avatar");},
                          child: CircleAvatar(
                            backgroundImage: AssetImage(info[index]["profilePic"].toString()),
                            radius: 30,
                          ),
                        ),
                        trailing:Icon(Icons.call,color: Colors.teal,size: 30,),
                      ),
                    );
                  },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
