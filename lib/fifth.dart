

import 'package:app_stg/detailsappointements.dart';
import 'package:flutter/material.dart';

import 'appoint_ajout.dart';




class Note {



  final String date;
  final String time1;

  final String details1;
  final String time2;

  final String details2;

  final String pending;



  Note({  required this.date ,required this.time1,required this.details1 ,required this.pending, required this.time2,required this.details2});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ListView Navigation - Passing Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FifthPage(),
    );
  }
}



class FifthPage extends StatelessWidget {





  final List<Note> _noteList = [
    Note(
      date :'05/07/2022',
      time1 :'19:00',
      details1 :'Appointements details 1',
      time2 :'3:00',
      details2 :'Appointements details 2',
      pending :'Pending',


    ),
    Note(

      date :'16/07/2022',

      time1 :'4:00',
      details1 :'Appointements details 1',
      time2 :'18:00',
      details2 :'Appointements details 2',
      pending :'Pending',

    ),

  ];






  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>ajout()));

          }, icon: Icon(Icons.add))
        ],
        title: Text('Appointements'),

      ),

      body:

        ListView.builder(

            itemCount: _noteList.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [

                    ExpansionTile(

                      title: Text(_noteList[index].date , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),



                      children: [

                        Container(

                            child:Stack(
                              children: [
                                Column(children: [
                                  ListTile(

                                    title: Text(
                                      _noteList[index].time1, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      _noteList[index].details1 , style: TextStyle(fontSize: 17 , color: Colors.black , ),
                                    ),
                                    trailing: Icon(Icons.arrow_forward , color: Colors.red,),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AppoiPage(),
                                          settings: RouteSettings(arguments : _noteList[index], ),



                                        ),
                                      );
                                    },

                                  ),



                                ],),
                                Padding(padding: EdgeInsets.only(left: 270, top: 26),
                                  child:Container(
                                    height: 35,
                                    width: 60,
                                    child: Text(_noteList[index].pending , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:   Colors.red),),
                                  ) ,),
                              ],
                            )

                        ),
                        Container(

                            child:Stack(
                              children: [
                                Column(children: [
                                  ListTile(

                                    title: Text(
                                      _noteList[index].time2, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      _noteList[index].details2 , style: TextStyle(fontSize: 17 , color: Colors.black , ),
                                    ),
                                    trailing: Icon(Icons.arrow_forward , color: Colors.red,),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AppoiPage(),
                                          settings: RouteSettings(arguments: _noteList[index],),
                                        ),
                                      );
                                    },

                                  ),


                                ],),

                                Padding(padding: EdgeInsets.only(left: 270, top: 26),
                                  child:Container(
                                    height: 35,
                                    width: 60,
                                    child: Text(_noteList[index].pending , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:   Colors.red),),
                                  ) ,),
                              ],
                            )

                        ),



                      ],
                    ),

                  ],
                )



              );







            }),




    );
  }



}
