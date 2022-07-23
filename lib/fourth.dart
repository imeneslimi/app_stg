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

  Note({required this.title, required this.content , required this.court , required this.circle , required this.type
    , required this.casenum , required this.status , required this.name , required this.phone , required this.email , required this.adress});
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
      title: '12005/2022',
      content: 'Lawyer : Ahmed',
      court :'Qatar Court',
      circle :'Doha circle',
      type : 'commercial',
      casenum : '2022/4520',
      status : 'Resumption',
      name :'Dhaou ',
      phone : '+216 50622415',
        email : 'dhaou@gmail.com',
        adress: 'Qatar Doha 2025',
    ),
    Note(
      title: '35678/2022',
      content: 'Lawyer : Mahdi',
      court :'Qatar Court',
      circle :'Doha circle',
      type : 'commercial',
        casenum : '2022/5600',
        status : 'Judgment',
        name :'Salah ',
        phone : '+216 22622415',
        email : 'Salah@gmail.com',
        adress: 'Qatar Doha 2025'
    ),
    Note(
      title: '89645/2022',
      content: 'Lawyer : Imed',
        court :'Qatar Court',
        circle :'Doha circle',
        type : 'legitimacy',
        casenum : '2022/3200',
        status : 'Archives',
        name :'Mohamd ',
        phone : '+216 98622415',
        email : 'Mohamd@gmail.com',
        adress: 'Qatar Doha 2025'

    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cases List'),
      ),
      body: ListView.builder(
          itemCount: _noteList.length,
          itemBuilder: (context, index) {
            return Card(
              child:

              ListTile(
                title: Text(
                  _noteList[index].title, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  _noteList[index].content + '...' +_noteList[index].circle +'...' + _noteList[index].type +'...' + _noteList[index].court +'.', style: TextStyle(fontSize: 15 , color: Colors.black , ),
                ),
                trailing: Icon(Icons.arrow_forward),









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
            );

          }),
    );
  }
}