import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('DashBoard'),
        ),
        body:Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text('welcome to legal aid customer area',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
              SizedBox(
                height: 1,
              ),
              Row(
                children: [

                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 70,),
                      Container(
                        width: 90,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Session(s) number",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,

                          ),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.blue,
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Remains",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.blue,
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
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 70,),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Case(s) number",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.blue,
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          " Payments",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.blue,
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
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 70,),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Consultation(s)",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.blue,
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 125,
                        height: 20,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: Text(
                          "Total amounts",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0, left: 1, right: 1, bottom: 1),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.blue,
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
                  SizedBox(
                    height: 10,
                  ),

                ],
              ),
              SizedBox(
                height: 60,
              ),
              Text('Payments Report',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),

              Expanded(child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:DataTable(
                    headingRowColor: MaterialStateProperty.all(Colors.yellowAccent),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                        left: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                        top: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                    ),

                    columns:
                    [
                      DataColumn(label: Text('Batch name' , style: TextStyle( fontWeight: FontWeight.bold , fontSize: 16, color: Colors.black),),
                      ),
                      DataColumn(label: Text('The amount paid',style: TextStyle( fontWeight: FontWeight.bold , fontSize: 16, color: Colors.black),),

                      ),
                      DataColumn(label: Text('Payment method',style: TextStyle( fontWeight: FontWeight.bold , fontSize: 16, color: Colors.black),),

                      ),
                      DataColumn(label: Text('Payment date',style: TextStyle( fontWeight: FontWeight.bold , fontSize: 16, color: Colors.black),),

                      ),

                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('****',style: TextStyle(fontSize: 16),)
                        ),
                        DataCell(Text('20',style: TextStyle(fontSize: 16),)
                        ),
                        DataCell(Text('cash',style: TextStyle(fontSize: 16))
                        ),
                        DataCell(Text('2022/07/05',style: TextStyle(fontSize: 16))
                        )

                      ]),
                      DataRow(cells: [
                        DataCell(Text('****',style: TextStyle(fontSize: 16))
                        ),
                        DataCell(Text('50',style: TextStyle(fontSize: 16))
                        ),
                        DataCell(Text('cash',style: TextStyle(fontSize: 16))
                        ),
                        DataCell(Text('2021/06/25',style: TextStyle(fontSize: 16))
                        )

                      ]),
                      DataRow(cells: [
                        DataCell(Text('****',style: TextStyle(fontSize: 16))
                        ),
                        DataCell(Text('100',style: TextStyle(fontSize: 16))
                        ),
                        DataCell(Text('cash',style: TextStyle(fontSize: 16))
                        ),
                        DataCell(Text('2020/05/04',style: TextStyle(fontSize: 16))
                        )

                      ]),
                    ]),
              )),

            ],
          ),
        )
        );
  }
}
