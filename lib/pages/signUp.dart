import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shopwear/pages/logIn.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String id = "signup_page";
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

            //Text "Create"
            const Text("Create",style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),


            // Text"Account"
            const Text("Account",style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height:25,),

            //Lastname Textfild
            Text("Lastname",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue,width: 3),
                color: Colors.white,
              ),
                child:const TextField(
                  decoration: InputDecoration(
                    icon: Icon(TablerIcons.pencil),
                    hintText: "example:Frenkiev",
                    hintStyle: TextStyle(fontSize: 22),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            SizedBox(height: 15,),


            //Name Textfild
            Text("Name",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
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
                  icon: Icon(TablerIcons.pencil),
                  hintText: "example:Jorj",
                  hintStyle: TextStyle(fontSize: 22),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 15,),


            //mail textfild
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
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 15,),



            //Password Textfild
            Text(" Password",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
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
                  icon: Icon(TablerIcons.lock),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 22),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 15,),


            //Comfirm Password
            Text("Comfirm Password",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
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
                  icon: Icon(TablerIcons.lock_access),
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(fontSize: 22),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 35,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, SignIn.id);
                  },
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

