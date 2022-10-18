import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shopwear/pages/home_page.dart';
import 'package:shopwear/pages/signUp.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static const String id = "login_page";
  @override
  State<SignIn> createState() => _SignInState();

}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/lmp.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //Text "Log In"
            const Text("Log In",style: TextStyle(
              color: Colors.blue,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 45,),

            //Mail Textfild
            Text("  Mail",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Container(

              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue,width: 3),
                color: Colors.white,
              ),
              child:const TextField(
                decoration: InputDecoration(
                  icon: Icon(TablerIcons.mail),
                  hintText: "example@mail.com",
                  hintStyle: TextStyle(fontSize: 22),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: 15,),



            //Password Textfild
            Text("  Password",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue,width: 3,),
                color: Colors.white,
              ),
              child:const TextField(
                decoration: InputDecoration(
                  icon: Icon(TablerIcons.lock),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 22),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),


            SizedBox(height: 35,),
            //SignIn button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, HomePage.id);
                  },
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text("Sign in",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 45,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width/8,
                      width: MediaQuery.of(context).size.width/8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/16),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/facebook.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("facebook",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                  ],
                ),
                SizedBox(width: 35,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width/8,
                      width: MediaQuery.of(context).size.width/8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/16,),
                        color: Colors.blueAccent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/google.png"),
                          fit: BoxFit.cover,
                        ),

                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Google",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                  ],
                ),
                SizedBox(width: 35,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width/8,
                      width: MediaQuery.of(context).size.width/8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/16,),
                        color: Colors.blueAccent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/apple.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Apple ID",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                  ],
                ),

              ],
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('I have not a Account. ',style: TextStyle(fontSize: 15,color: Colors.white),),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignUp.id);
                  },
                  child: Text('Create Account',style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
