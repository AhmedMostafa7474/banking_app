import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150.0),
        child: Center(
           child: Column(
             children: [
               Container(
                 height: 200,
                 width: 200,
                 child: Image.asset("assets/banklogo.png",fit: BoxFit.cover,),
               ),
               Text("Banking App",style: TextStyle(
                 fontSize: 25
               ),),
               SizedBox(height: 60)
               ,
               Container(
                 decoration: BoxDecoration(
                   color: Colors.blue,
                    borderRadius: BorderRadius.circular(11),
                 ),
                 child: TextButton(onPressed: (){Navigator.pushNamed(context, "UserScreen");},
                     child: Text("View all Customers",style: TextStyle(color: Colors.white),),style:TextButton.styleFrom(
                     //backgroundColor: Colors.blue
                                  ) ,),
               )
             ],
           ),
        ),
      ),
    );
  }
}
