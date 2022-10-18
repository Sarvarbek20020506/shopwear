
import 'package:flutter/material.dart';
import 'package:shopwear/pages/charPage.dart';
class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);


  static const String id = "home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String img = "https://source.unsplash.com/user/c_v_r/100x100";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Clothes shop",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black,
        ),
        ),
        elevation: 0,
        actions: [
          Icon(Icons.login,color: Colors.blueAccent,),
          SizedBox(width: 10,),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(height: 100,),
            Row(

              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                    ),

                  ),
                ),
               SizedBox(width: 5,),
               //Profile page on Drawer
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("username",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("ganiyevsarvarbek57@gmail.com",style: TextStyle(
                      fontSize: 10,
                    ),),
                 ],
               ),
              ],
            ),
            SizedBox(height: 50,),
            //MARK: Support
            GestureDetector(
              onDoubleTap: (){
                Navigator.pushReplacementNamed(context, ChatPage.id);
                print("working");
              },
              child: elements("Support",Icons.support_agent,Colors.blue),
            ),
            SizedBox(height: 20,),
            //Change Language
            GestureDetector(
              onDoubleTap: (){
                print("change lang");
              },
              child: elements("Change Language",Icons.language,Colors.blueAccent),
            ),
            SizedBox(height: 20,),
            //Settings
            GestureDetector(
              onDoubleTap: (){
                print("settings");
              },
              child: elements("Settings",Icons.settings,Colors.blueAccent),
            ),
            SizedBox(height: 20,),
            //Log out button
            GestureDetector(
              onDoubleTap: (){
                print("log out");
              },
              child: elements("Log Out",Icons.login_outlined,Colors.red),
            ),
          ],
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
           child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                menuItems(img, "shoes"),
                SizedBox(width: 15,),
                menuItems(img, "caps"),
                SizedBox(width: 15,),
                menuItems(img, "sveater"),
                SizedBox(width: 15,),
                menuItems(img, "tshirt"),
                SizedBox(width: 10,),
                menuItems(img, "other"),
                SizedBox(width: 10,),
                menuItems(img, "vit"),
                SizedBox(width: 10,),
                menuItems(img, "bla bla"),
              ],
            ),
          ),
          Expanded(child: Container(
            child: GridView.count(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
              children: < Widget>[
                menuscrolItems(img,"shoes"),
                menuscrolItems(img,"shoes"),
                menuscrolItems(img,"shoes"),
                menuscrolItems(img,"shoes"),
                menuscrolItems(img,"shoes"),
                menuscrolItems(img,"shoes"),
                menuscrolItems(img,"shoes"),
              ],
            ),
          ),)
        ],
      )
    );
  }
}

//Drawer items
 Widget elements(String name2,Icons,Colors,){
  return GestureDetector(
    onTap: (){

    },
    child:  Row(
      children: [
        Icon(Icons),
        SizedBox(width: 10,),
        Text("$name2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors),)
      ],
    ),
  );
 }
 //Home menus
 Widget menuItems(String img2,String title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
            image: NetworkImage(img2),
          ),

        ),
      ),
      Text(title),
    ],
  );
 }

Widget menuscrolItems(String img2,String title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 100,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: NetworkImage(img2),
            fit: BoxFit.cover
          ),
        ),
      ),
      Text(title),
    ],
  );
}