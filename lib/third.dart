import 'package:flutter/material.dart';







class item {


  final String year;
  final String date;
  final String etat1;
  final String etat2;
  final String money;
  final String date2;
  final String etat11;
  final String etat22;
  final String money2;

  item({  required this.year,required this.date ,required this.etat1  ,required this.etat2 ,required this.money,required this.date2 ,required this.etat11  ,required this.etat22 ,required this.money2 });
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {


  final List<item> _itemList = [
    item(

      year :'2022',
      date :'05/07/2022',
      etat1 :'مقدم على قضية',
      etat2:'كاش',
      money:'210.00',
        date2 :'05/08/2022',
        etat11 :'اتعاب القضية',
        etat22:'بنكي',
        money2:'200.00'



    ),
    item(


      year :'2020',
        date :'05/07/2020',
        etat1 :'مقدم على قضية',
        etat2:'بنكي',
        money:'75.00',
        date2 :'05/08/2020',
        etat11 :'اتعاب القضية',
        etat22:'كاش',
        money2:'160.00'

    ),

  ];





  @override
  Widget build(BuildContext context) {
    String session_nbr = '3';
    String case_nbr = '3';
    String remains = '0';
    String payments = '0';
    String consultation_nbr = '0';
    String amount = '0';




    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          title: Text('DashBoard'),
        ),
        body:
        Center(
          child:
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(

                width: 370,
                height: 30,
                alignment: Alignment.topCenter,
                color: Colors.black12,
                child: Text('Welcome To Legal Aid Customer Area',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:   Colors.black)),
              ),


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
                      SizedBox(height: 25,),
                      Container(
                        width: 180,
                        height: 30,
                        alignment: Alignment.topCenter,
                        color: Colors.green,
                        child: Text(
                          "Case(s) Number",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),

                      ),
                      Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.black12,
                        child: Text(case_nbr,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),

                      ),





                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 180,
                        height: 30,
                        alignment: Alignment.topCenter,
                        color: Colors.pink,
                        child: Text(
                          "Session(s) Number",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),

                      ),
                      Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.black12,
                        child: Text(session_nbr,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 180,
                        height: 30,
                        alignment: Alignment.topCenter,
                        color: Colors.green,
                        child: Text(
                          "Payements",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),

                      ),
                      Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.black12,
                        child: Text(payments,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width : 10,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 25,),
                      Container(
                        width: 180,
                        height: 30,
                        alignment: Alignment.topCenter,
                        color: Colors.green,
                        child: Text(
                          "Consultation(s)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),

                      ),
                      Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.black12,
                        child: Text(consultation_nbr,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 180,
                        height: 30,
                        alignment: Alignment.topCenter,
                        color: Colors.pink,
                        child: Text(
                          "Total Amounts",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),

                      ),
                      Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.black12,
                        child: Text(amount,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 180,
                        height: 30,
                        alignment: Alignment.topCenter,
                        color: Colors.green,
                        child: Text(
                          "Remains",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),

                      ),
                      Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.black12,
                        child: Text(remains,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),



                ],
              ),

              SizedBox(
                height: 10,
              ),

              Container(

                width: 370,
                height: 30,
                alignment: Alignment.topLeft,
                color: Colors.pink,
                child: Text('Payments Report',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:   Colors.white)),
              ),
              Expanded(

                child: ListView (


                children: [
                  Padding(padding: EdgeInsets.only(left: 11 , right: 11 ),

                child:




                  ExpansionPanelList.radio(

                    animationDuration: const Duration(milliseconds: 600),
                    children: _itemList
                        .map(
                          (item) => ExpansionPanelRadio(

                          value:( item.year ) ,
                          canTapOnHeader: true,
                          headerBuilder: (_, isExpanded) =>
                             Card(

                               color: Colors.green,
                               child:  Container(

                                   padding: const EdgeInsets.symmetric(
                                       vertical: 10, horizontal: 30),
                                   child: Column(
                                     children: [

                                       Text(
                                         item.year,
                                         style: const TextStyle(fontSize: 20),
                                       ),


                                     ],
                                   )

                               ),
                             ),




                          body: Column(

                            children: [
                              Container(
                                  child:
                                  Column(

                                    children: [

                                   Container(
                                     color:Colors.white,

                                     child:  Stack(
                                       children: [

                                         Container(

                                             child:
                                             Column(

                                               children: [
                                                 ListTile(

                                                 title: Text(
                                                   item.date, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                                                 ),
                                                 subtitle: Text(
                                                   item.etat1 , style: TextStyle(fontSize: 17 , color: Colors.black , ),
                                                 ),
                                                 trailing: Icon(Icons.arrow_forward , color: Colors.green,),

                                               ),

                                               ],

                                             )
                                         ),
                                         Padding(padding: EdgeInsets.only(left: 260, top: 16),
                                           child:Container(
                                             height: 30,
                                             width: 60,
                                             child: Text(item.money , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:   Colors.red),),
                                           ) ,),
                                         Padding(padding: EdgeInsets.only(left: 260, top: 40),
                                           child:Container(
                                             alignment: Alignment.center,
                                             color: Colors.red,
                                             height: 30,
                                             width: 60,
                                             child: Text(item.etat2 , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:   Colors.white),),
                                           ) ,),


                                       ],
                                     )

                                   ),
                                      Container(
                                          color:Colors.white,

                                          child:  Stack(
                                            children: [

                                              Container(

                                                  child:
                                                  Column(

                                                    children: [ListTile(

                                                      title: Text(
                                                        item.date2, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                                                      ),
                                                      subtitle: Text(
                                                        item.etat11 , style: TextStyle(fontSize: 17 , color: Colors.black , ),
                                                      ),
                                                      trailing: Icon(Icons.arrow_forward , color: Colors.green),

                                                    ),

                                                    ],

                                                  )
                                              ),
                                              Padding(padding: EdgeInsets.only(left: 260, top: 16),
                                                child:Container(
                                                  height: 30,
                                                  width: 60,
                                                  child: Text(item.money2 , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:   Colors.red),),
                                                ) ,),
                                              Padding(padding: EdgeInsets.only(left: 260, top: 40),
                                                child:Container(
                                                  color: Colors.red,
                                                  height: 30,
                                                  width: 60,
                                                  alignment: Alignment.center,
                                                  child: Text(item.etat22 , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:   Colors.white),),
                                                ) ,),


                                            ],
                                          )

                                      ),







                                    ],
                                  )




                              ),

                            ],
                          )



                      ),
                    )
                        .toList(),
                  ),
                ),
















                ],
              ))




              
      ]












          ),

        ),



    );
  }



  }

