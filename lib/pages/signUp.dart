import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
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
            Text("  Lastname",style: TextStyle(color: Colors.white),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
                color: Colors.white,
              ),
                child:const TextField(
                  decoration: InputDecoration(
                    icon: Icon(TablerIcons.pencil),
                   //label: Text("Lastname",style: TextStyle(fontSize: 20),),
                  ),
                  style: TextStyle(fontSize: 25),
                ),
              ),
            SizedBox(height: 15,),


            //Name Textfild
            Text("  Name",style: TextStyle(color: Colors.white),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
                color: Colors.white,
              ),
              child:const TextField(
                decoration: InputDecoration(
                  icon: Icon(TablerIcons.pencil),
                  //label: Text("Lastname",style: TextStyle(fontSize: 20),),
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 15,),


            //Mail Textfild
            Text("  Mail",style: TextStyle(color: Colors.white),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
                color: Colors.white,
              ),
              child:const TextField(
                decoration: InputDecoration(
                  icon: Icon(TablerIcons.mail),
                  //label: Text("Lastname",style: TextStyle(fontSize: 20),),
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 15,),



            //Password Textfild
            Text("  Password",style: TextStyle(color: Colors.white),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
                color: Colors.white,
              ),
              child:const TextField(
                decoration: InputDecoration(
                  icon: Icon(TablerIcons.lock),
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 15,),


            //Comfirm Password
            Text("  Confirm Password",style: TextStyle(color: Colors.white),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: MediaQuery.of(context).size.width* 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
                color: Colors.white,
              ),
              child:const TextField(
                decoration: InputDecoration(
                  icon: Icon(TablerIcons.lock_access),
                  //label: Text("Lastname",style: TextStyle(fontSize: 20),),
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 35,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: (){},
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

