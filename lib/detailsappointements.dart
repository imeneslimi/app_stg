
import 'package:flutter/material.dart';

import 'fifth.dart';






class AppoiPage extends StatefulWidget {
  const AppoiPage({Key? key}) : super(key: key);

  @override
  State<AppoiPage> createState() => _AppoiPageState();
}

class _AppoiPageState extends State<AppoiPage> {




  @override
  Widget build(BuildContext context) {

    final note = ModalRoute.of(context)!.settings.arguments as Note;






    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Appointements'),

      ),
      body: Stack(
        children: [
          Padding(padding: EdgeInsets.only(left: 10,top: 25 ),
            child:Container(
              color: Colors.white,
              height: 30,
              width: 150,
              child: Text('Appointement Date' , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:   Colors.black),),
            ) ,),
          Padding(padding: EdgeInsets.only(left: 235,top: 25 ),
            child:Container(
              color: Colors.white,
              alignment: Alignment.topRight,
              height: 30,
              width: 150,
              child: Text(note.date , style: TextStyle(fontSize: 18, color:   Colors.black),),
            ) ,),

          Padding(padding: EdgeInsets.only(left: 10,top:70 ),
            child:Container(
              color: Colors.white,
              height: 30,
              width: 150,
              child: Text('Appointement Hour' , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:   Colors.black),),
            ) ,),
          Padding(padding: EdgeInsets.only(left: 235,top: 70 ),
            child:Container(
              color: Colors.white,
              alignment: Alignment.topRight,
              height: 30,
              width: 150,
              child: Text(note.time1 , style: TextStyle(fontSize: 18, color:   Colors.black),),
            ) ,),

          Padding(padding: EdgeInsets.only(top:170 ),
            child:Container(

              color: Colors.pink,
              height: 30,
              width: 360,
              child: Text('  Notes' , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:   Colors.white),),
            ) ,),

          Padding(padding: EdgeInsets.only(top:250, left: 15 ),
            child:Container(

              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all( color: Colors.black , width: 2),

              ),
              height: 150,
              alignment: Alignment.topLeft,
              width: 360,
              child: Text(note.details1 , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:   Colors.black),),
            ) ,),




        ],
      ),




    );
  }
}
