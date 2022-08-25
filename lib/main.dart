import 'package:app_stg/second.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

main(){
  runApp( MaterialApp(
    home: LoginPage(),
  ));

}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final PasswordController = TextEditingController();



  String email = 'imenslimi1999@gmail.com';
  String password = 'imene';



  bool hide =true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor:Colors.blueAccent,
      body:Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 80 ,left: 90),
            child: Text("Welcome", style: TextStyle(color: Colors.white,fontSize: 50 , fontWeight: FontWeight.w300)),
          ),
          Padding(padding: EdgeInsets.only(top: 160 , left: 100,right: 50,),
            child: Image(image: AssetImage('images/law.png'),width: 200,),
          ),



          Container(
            padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 18),
            margin: EdgeInsets.only(top: 400 , left: 1 , right: 1,bottom:1),
            height: 500,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
            ),

            child: Form(
              key: formkey,


              child: Column(

                children: [
                  Text("Sign In",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
                  SizedBox(height: 40,),
                  TextFormField(
                    validator: (value){
                      if (value!.isEmpty ){
                        return'Please enter your email';
                      }
                      if (emailController.text !=email){
                        return 'Email incorrect';
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "E-mail",
                        prefixIcon: Icon(Icons.email)
                    ),

                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return'Please enter your password';
                      }
                      if (PasswordController.text !=password){
                        return 'Password incorrect';
                      }

                      return null;
                    },
                    controller: PasswordController,
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.security),
                        suffixIcon: IconButton(onPressed: (){
                          setState((){
                            hide=!hide;

                          });
                        }, icon:hide?Icon(Icons.visibility_off):Icon(Icons.visibility),)
                    ),
                  ),
                  SizedBox(height: 40,),
                  Center(
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 60)

                        ),
                        onPressed: (){

                          if (formkey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));

                          }



                        },
                        child: Text("sign in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),



                ],
              ),
            ),
          ),
        ],

      ) ,);


  }


}













