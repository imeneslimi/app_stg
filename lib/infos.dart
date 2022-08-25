
import 'package:flutter/material.dart';


import 'fourth.dart';


class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {


  @override
  Widget build(BuildContext context) {
    final note = ModalRoute.of(context)!.settings.arguments as Note;
    
    return Scaffold(
      backgroundColor: Colors.white,
        body:Center(
          child:
         Column(
           children: [
             
             SizedBox(
               height: 15,

             ),
             Row(children: [
               SizedBox(
                 width: 6,
               ),
               Column(
                 children: [
                   Container(
                   width: 120,
                   height: 30,
                   alignment: Alignment.topCenter,
                   color: Colors.green,
                   child: Text(
                     "Case Amount",
                     style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,

                     ),
                   ),

                 ),
                   Container(
                     width: 120,
                     height: 60,
                     alignment: Alignment.center,
                     color: Colors.black12,
                     child: Text(note.case_amount,
                       style: TextStyle(
                           fontSize: 25,
                           fontWeight: FontWeight.bold,
                           color: Colors.black),
                     ),

                   ),],
               ),
               SizedBox(
                 width: 10,
               ),

               Column(
                 children: [
                   Container(
                   width: 120,
                   height: 30,
                   alignment: Alignment.topCenter,
                   color: Colors.pink,
                   child: Text(
                     "Payments",
                     style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,

                     ),
                   ),

                 ),
                   Container(
                     width: 120,
                     height: 60,
                     alignment: Alignment.center,
                     color: Colors.black12,
                     child: Text(note.payments,
                       style: TextStyle(
                           fontSize: 25,
                           fontWeight: FontWeight.bold,
                           color: Colors.black),
                     ),

                   ),],
               ),
               SizedBox(
                 width: 10,
               ),

               Column(children: [
                 Container(
                 width: 120,
                 height: 30,
                 alignment: Alignment.topCenter,
                 color: Colors.green,
                 child: Text(
                   "Remain",
                   style: TextStyle(
                     fontSize: 15,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,

                   ),
                 ),

               ),
                 Container(
                   width: 120,
                   height: 60,
                   alignment: Alignment.center,
                   color: Colors.black12,
                   child: Text(note.remain,
                     style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                         color: Colors.black),
                   ),

                 ),],)
             ],),
             SizedBox(height: 30,),
             Stack(children: [

               Container(
                 height: 30,
                 width: 380,
                 color: Colors.grey,
                 child: Text('Case Code :' , style: TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.bold),),),

               Padding(padding: EdgeInsets.only(top: 2,left: 250),
                 child: Container(
                   height: 25,
                   width: 130,
                   color: Colors.grey,
                   child: Text(note.title+'/'+note.year , style: TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.bold),),),),


             ],),


             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 30),
              child: Container(
                 height: 30,
                 width: 100,
                 color: Colors.white,
                 child: Text('Case Num' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 270),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 25,
                   width: 130,
                   color: Colors.white,
                   child: Text(note.year+'/'+note.casenum , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),
             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 1),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 50,
                   color: Colors.white,
                   child: Text('Type' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 270),
                 child: Container(
                   alignment: Alignment.topRight,
                   height: 25,
                   width: 60,
                   color: Colors.white,
                   child: Text(note.type , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),

             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 1),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 50,
                   color: Colors.white,
                   child: Text('Status' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 240),
                 child: Container(
                   alignment: Alignment.topRight,
                   height: 25,
                   width: 90,
                   color: Colors.white,
                   child: Text(note.status , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),


             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 3),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 50,
                   color: Colors.white,
                   child: Text('Court' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 250),
                 child: Container(
                   alignment: Alignment.topRight,
                   height: 25,
                   width: 80,
                   color: Colors.white,
                   child: Text(note.court , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),

             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 8),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 50,
                   color: Colors.white,
                   child: Text('Circle' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 250),
                 child: Container(
                   alignment: Alignment.topRight,
                   height: 25,
                   width: 90,
                   color: Colors.white,
                   child: Text(note.circle , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),


             SizedBox(height: 13,),
             Stack(children: [

               Container(
                 height: 30,
                 width: 380,
                 color: Colors.grey,
                 child: Text('Client Infos ' , style: TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.bold),),),




             ],),


             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 20),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 50,
                   color: Colors.white,
                   child: Text('Name' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 150),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 25,
                   width: 200,
                   color: Colors.white,
                   child: Text(note.name , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),

             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 20),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 50,
                   color: Colors.white,
                   child: Text('Phone' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 150),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 25,
                   width: 200,
                   color: Colors.white,
                   child: Text(note.phone , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),
             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 20),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 50,
                   color: Colors.white,
                   child: Text('Email' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 150),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 25,
                   width: 200,
                   color: Colors.white,
                   child: Text(note.email , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),

             SizedBox(height: 12,),
             Stack(children: [
               Padding(padding: EdgeInsets.only(left: 20),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 30,
                   width: 55,
                   color: Colors.white,
                   child: Text('Adress' , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),

               Padding(padding: EdgeInsets.only(top:2,left: 150),
                 child: Container(
                   alignment: Alignment.topLeft,
                   height: 26,
                   width: 200,
                   color: Colors.white,
                   child: Text(note.adress , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),),),


             ],),




           ],
         )



        )



    );
  }
}
