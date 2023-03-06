
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends  StatefulWidget {
  @override
  State<Home_Screen > createState() => _HomeState();
}
class _HomeState extends State<Home_Screen > {
  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Radio Button in Flutter"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Wrap(

          //Container
            children: [
              Container(
                  child:
                  Column(
                    children: [
                      Text("What is your gender?", style: TextStyle(
                          fontSize: 18
                      ),),
                      Divider(),

                      RadioListTile(
                        title: Text("Male"),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),

                      RadioListTile(
                        title: Text("Female"),
                        value: "female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),

                      RadioListTile(
                        title: Text("Other"),

                        value: "other",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ],
                  )
              )
              , Container(

                  child: Column(
                      children:[
                        Transform.scale(
                            scale: 2,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched,
                              activeColor: Colors.blue,
                              activeTrackColor: Colors.yellow,
                              inactiveThumbColor: Colors.redAccent,
                              inactiveTrackColor: Colors.orange,
                            )
                        ),
                        Text('$textValue', style: TextStyle(fontSize: 20),)


                      ]
                  )
              ),
              Container(
                child: TextButton(
                  onPressed: (){
                    //print("ahmed");
                  }, child: Text("click CLICK"),
                  style: TextButton.styleFrom(primary: Colors.white,backgroundColor: Colors.red) ,
                ),
              ),
              Card(
                child:
                Text("Ahmed ",style: TextStyle(fontSize: 20),),
              )

            ]
        )
    );
  }
//padding: EdgeInsets.all(20),
}