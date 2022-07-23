
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

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
          child: Column(
            children: [
SizedBox(height: 25,),
              Row(
                children: [

                  SizedBox(
                    width: 10,
                  ),


                  Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Amount",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,

                          ),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.green,
                        child: Text(
                          "0",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),


                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(height: 5,),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Payments",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                        child: Text(
                          "0",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),

                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(height: 5,),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Remain",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.deepOrangeAccent,
                        child: Text(
                          "0",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),

                    ],
                  ),


                ],
              ),

              SizedBox(height: 40),
             Container(
               color: Colors.blue,
               child:Text('Case Code :'+'                                                        '+ note.title , style: TextStyle (fontSize: 15, fontWeight: FontWeight.bold ,),),

             ),
              SizedBox(height: 30),
              Text('Case Num :'+'                                                  '+ note.casenum ,style: TextStyle(fontSize: 14),),
              SizedBox(height: 20),
              Text('Type :'+'                                                           '+ note.type ,style: TextStyle(fontSize: 14)),
              SizedBox(height: 20),
              Text('Status :'+'                                                        '+ note.status ,style: TextStyle(fontSize: 14)),
              SizedBox(height: 20),
              Text('Court :'+'                                                           '+ note.court ,style: TextStyle(fontSize: 14)),
              SizedBox(height: 20),
              Text('Circle :'+'                                                           '+ note.circle ,style: TextStyle(fontSize: 14)),
              SizedBox(height: 30),
              Container(
                color: Colors.blue,
                child: Text('Client Infos ' +'                                                                                '+'', style: TextStyle (fontSize: 15, fontWeight: FontWeight.bold , ),),
              ),
              SizedBox(height: 30),
              Text('Name :'+'                                                                 '+ note.name ,style: TextStyle(fontSize: 14)),
              SizedBox(height: 20),
              Text('Phone Num :'+'                                        '+ note.phone ,style: TextStyle(fontSize: 14)),
              SizedBox(height: 20),
              Text('Email :'+'                                              '+ note.email ,style: TextStyle(fontSize: 14)),
              SizedBox(height: 20),
              Text('Adress :'+'                                                 '+ note.adress ,style: TextStyle(fontSize: 14)),









            ],
          ),



        )



    );
  }
}
