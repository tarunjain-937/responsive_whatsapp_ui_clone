import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [

                      Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                    padding: EdgeInsets.all(14),
                                    color: Colors.grey,
                                    child: Icon(Icons.groups_rounded,size: 40,color: Colors.white,))),
                            Positioned(
                              top: 43,
                              left: 42,
                              child:   CircleAvatar(
                                backgroundColor:  Color(0xff075e55),
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
                          ]
                      ),

                      SizedBox(width: 15),

                      Text("New Community", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)

                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
