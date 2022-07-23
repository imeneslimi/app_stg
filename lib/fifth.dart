import 'package:app_stg/detailsappointements.dart';
import 'package:flutter/material.dart';






class item {


  final String date;
  final String time;
  final String detail;

  item({  required this.date,required this.time ,required this.detail  });
}



class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {

  final List<item> _itemList = [
    item(

      date :'15/07/2022',
      time :'19:00',
      detail :'Appointements details 1',


    ),
    item(


      date :'16/07/2022',
      time :'18:00',
      detail :'Appointements details 2',

    ),
    item(


      date :'18/10/2022',
      time :'16:00',
      detail :'Appointements details 3',


    )
  ];




  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Appointements'),
      ),



      body: SingleChildScrollView(
        child: ExpansionPanelList.radio(
          elevation: 3,
          animationDuration: const Duration(milliseconds: 600),
          children: _itemList
              .map(
                (item) => ExpansionPanelRadio(
                value: item.date,
                canTapOnHeader: true,
                headerBuilder: (_, isExpanded) =>
                    Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
                    child: Column(
                      children: [
                        Text(
                          item.date,
                          style: const TextStyle(fontSize: 20),
                        )

                      ],
                    )

                    ),
                body: Column(
                  children: [
                    Container(


                child: ListTile(
                title: Text(
                  item.time, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                ),
                  subtitle: Text(
                    item.detail , style: TextStyle(fontSize: 15 , color: Colors.black , ),
                  ),
                  trailing: Icon(Icons.arrow_forward),



                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppoiPage(),
                        settings: RouteSettings(arguments: _itemList),
                      ),
                    );
                  },
                ),




                    ),
                  ],
                )



            ),
          )
              .toList(),
        ),
      ),
    );
  }
}