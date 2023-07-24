import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Profile")
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //=================================================================================
              Stack(
                  children:[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 45),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.asset("lib/img1.jpg",height: 180,width: 180,fit: BoxFit.cover,),
                      ),
                    ),

                    Positioned(
                      top: 164,
                      left: 130,
                      child:   CircleAvatar(
                        backgroundColor: Colors.teal,
                        radius: 25,
                        child: Container(
                            padding: EdgeInsets.all(0),
                            child: Icon(Icons.camera_alt_rounded,color: Colors.white,size: 28,)),
                      ),
                    )
                  ]
              ),

              //=============================================================================

              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.person,color: Colors.grey,size: 28,),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            SizedBox(width: 8),
                            Text("Tarun jain",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(width: 8),
                            Text("This is not your username or pin.This name\nwill be visble to your WhatsApp contacts."
                              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.edit,color: Colors.grey,size: 28,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),
              Divider(thickness: 1),
              SizedBox(height: 12),
              //=================================================================================

              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.info_outline_rounded,color: Colors.grey,size: 28,),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text("About",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            SizedBox(width: 8),
                            Text("Architecture is my dream,painting"
                              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.edit,color: Colors.grey,size: 28,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),
              Divider(thickness: 1),
              SizedBox(height: 12),
              //==============================================================================

              InkWell(
                onTap: (){},
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.phone,color: Colors.grey,size: 28,),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text("phone",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            SizedBox(width: 8),
                            Text("+9135557254868"
                              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
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
