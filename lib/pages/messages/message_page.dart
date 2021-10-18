
import 'package:cyclone_chat/utils/shared_preference_util.dart';
import 'package:flutter/material.dart';
class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  SharedPreferencesDataUtils store = SharedPreferencesDataUtils();
  int number=0;
  @override
  void initState(){
    store.get("num").then((value) => {
      if(value!=null){

        setState(() {
          print("进来啦");
          number = value;
        })
      }

    });

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("number-->$number");
    return Scaffold(
      appBar: AppBar(
        title: Text("消息 ($number)"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              MaterialButton(
                child: const Text("设置"),
                onPressed: ()async{
                  await store.setInt("num", 5);
                  //SharedPreferencesUtils.savePreference(context, "data",99);
                }
              )
            ],
          ),
        ),
      )
    );
  }
}
