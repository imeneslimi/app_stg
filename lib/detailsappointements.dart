import 'package:flutter/material.dart';





class AppoiPage extends StatefulWidget {
  const AppoiPage({Key? key}) : super(key: key);

  @override
  State<AppoiPage> createState() => _AppoiPageState();
}

class _AppoiPageState extends State<AppoiPage> {




  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Appointements'),
      ),




    );
  }
}
