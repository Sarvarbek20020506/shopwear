import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shopwear/pages/home_page.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);
  static String id = "chat_page";
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  var text_cont1 = TextEditingController();
  List list1 = ["Send message for connect you"];
  String chat1 ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: IconButton(
            onPressed: (){
              list1.clear();
            },
            icon: Icon(Icons.delete),
          ),),
        ],
        centerTitle: true,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, HomePage.id);
        },
        icon:Icon(Icons.arrow_back,color: Colors.black,),
            ),

            Text("Chat with User"),
          ],
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: elementItem(list1),),

          Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child:TextField(

                    keyboardType: TextInputType.text,
                    controller: text_cont1,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Send message",
                      suffixIcon: IconButton(
                        onPressed: (){
                          text_cont1.clear();
                        }, icon: Icon(Icons.clear),
                      ),
                    ),
                  ), ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      list1.add(text_cont1.text);
                    });
                    print(list1.length);
                  },
                  child: Icon(Icons.send),

                )
              ],
            ),),),

        ],
      ),
    );
  }
}

Widget elementItem(list1){

  return Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    child: Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey
      ),
      child: Center(
        child: Text(list1.last,style: TextStyle(color: Colors.black),),
      ),
    ),
  );
}