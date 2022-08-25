
import 'package:app_stg/docs.dart';
import 'package:app_stg/fourth.dart';
import 'package:app_stg/infos.dart';
import 'package:app_stg/parties.dart';
import 'package:app_stg/sessions.dart';
import 'package:flutter/material.dart';

import 'fourth.dart';



class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final note = ModalRoute.of(context)!.settings.arguments as Note;
    return DefaultTabController(length: 4,

        child: Scaffold(
          appBar: AppBar(
            title: Text('Case details'),

            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,

              tabs: [
                Tab(text: 'infos', ),
                Tab(text: 'Parties',),
                Tab(text: 'Sessions',),
                Tab(text: 'Docs',)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              InfoPage(),
              PartPage(),
              SessPage(),
              DocPage(),

            ],
          ),















        ) );
  }
}