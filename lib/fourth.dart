import 'package:flutter/material.dart';

import 'DetailsScreen.dart';



class Note {
  final String title;
  final String content;
  final String court;
  final String circle;
  final String type;
  final String casenum;
  final String status;
  final String name;
  final String phone;
  final String email;
  final String adress;
  final String problem;
  final String year;
  final String case_amount;
  final String payments;
  final String remain;


  Note({required this.title, required this.content , required this.court , required this.circle , required this.type
    , required this.casenum , required this.status , required this.name , required this.phone , required this.email , required this.adress , required this.problem ,required this.year,required this.case_amount,required this.remain,required this.payments});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ListView Navigation - Passing Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListScreen(),
    );
  }
}
class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);
  final List<Note> _noteList = [
    Note(
      title: '12005',
      year : '2022',
      content: ' Ahmed',
      court :'محكمة قطر',
      circle :'دائرة الدوحة',
      type : 'تجارية',
      casenum : '4520',
      status : 'استئناف',
      name :'Dhaou ',
      phone : '+216 50622415',
        email : 'dhaou@gmail.com',
        adress: 'Qatar Doha 2025',
      problem: 'حل نزاع على ملكية تجارية',
      case_amount : '200.00',
      remain : '0',
      payments : '200.00',
    ),
    Note(
      title: '35678',
        year : '2022',
      content: 'Mahdi',
      court :'محكمة قطر',
      circle :'دائرة الدوحة',
      type : 'تجارية ',
        casenum : '5600',
        status : 'الحكم',
        name :'Salah ',
        phone : '+216 22622415',
        email : 'Salah@gmail.com',
        adress: 'Qatar Doha 2025',
        problem: 'حل نزاع على ملكية تجارية',
      case_amount : '210.00',
      remain : '0',
      payments : '210.00',
    ),
    Note(
      title: '89645',
        year : '2022',
      content: ' Imed',
        court :'محكمة قطر',
        circle :'دائرة الدوحة',
        type : 'جنائية',
        casenum : '3200',
        status : 'منظورة سابقا',
        name :'Mohamd ',
        phone : '+216 98622415',
        email : 'Mohamd@gmail.com',
        adress: 'Qatar Doha 2025',
        problem: 'التهجم على موظف للدولة اثناء اداء مهامه',
      case_amount : '230.00',
      remain : '0',
      payments : '230.00',

    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cases'),
      ),
      body: Column(
        children: [

         Padding(padding: EdgeInsets.only(top: 5),
         child:  Container(
           height: 40,
           width: 385,
           color: Colors.red,
           child: Text('Cases(s) List' , style: TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.bold),),
         ),),

          Expanded(child:
          ListView.builder(
              itemCount: _noteList.length,
              itemBuilder: (context, index) {
                return

                  Card(
                      color: Colors.white,
                      child:Stack(
                        children: [
                          Container(
                            height: 140,

                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    _noteList[index].title+'/'+_noteList[index].year, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    'Lawyer : '+_noteList[index].content , style: TextStyle(fontSize: 15 , color: Colors.black , ),
                                  ),
                                  trailing: Icon(Icons.arrow_forward , color: Colors.red,),









                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailScreen(),
                                        settings: RouteSettings(arguments: _noteList[index]),
                                      ),
                                    );
                                  },
                                ),

                              ],
                            ),
                          ),



                          Padding(padding: EdgeInsets.only(left: 18, top: 65),
                            child:Container(
                              height: 30,
                              width: 120,
                              child: Text( 'Court : '+_noteList[index].court , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:   Colors.black),),
                            ) ,),
                          Padding(padding: EdgeInsets.only(left: 18,top: 90 ),
                            child:Container(
                              height: 30,
                              width: 245,
                              child: Text(_noteList[index].problem , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:   Colors.black),),
                            ) ,),
                          Padding(padding: EdgeInsets.only(left: 130, top: 22),
                            child:Container(
                              alignment: Alignment.topRight,
                              height: 30,
                              width: 200,
                              color: Colors.white,
                              child: Text(_noteList[index].type+' / '+_noteList[index].status , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:   Colors.red),),
                            ) ,),
                          Padding(padding: EdgeInsets.only(left: 160, top: 65),
                            child:Container(
                              height: 30,
                              width: 130,
                              child: Text('Circle : '+_noteList[index].circle, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:   Colors.black),),
                            ) ,),









                        ],
                      )


                  );





              }),)
        ],
      )

    );
  }
}
