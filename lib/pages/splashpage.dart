import 'package:flutter/material.dart';
import 'package:shopwear/pages/logIn.dart';
import 'package:shopwear/pages/signUp.dart';

import 'home_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static String id = "splash_page";
  @override
  State<SplashPage> createState() => _SplashPageState();

}
 
class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatiSlpash();
  }
  _navigatiSlpash()async{
    await  Future.delayed(Duration(milliseconds: 2000),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>(const SignIn())));
    });
  }

  @override
  Widget build(BuildContext context) {
    var rad = MediaQuery.of(context).size.width/4;
    return Scaffold(
      body: Container(
        height:  MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
            colors: [
              Colors.deepOrange,
              Colors.purpleAccent,
              Colors.blueAccent,
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: rad,
              width: rad,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(rad/2),
                  image:  const DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/user/c_v_r/100x100"),
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            SizedBox(height: 50,),
            const Text("Swift is fast",style: TextStyle(fontWeight: FontWeight.bold,),),
          ],
        ),
      ),
    );

  }
}


