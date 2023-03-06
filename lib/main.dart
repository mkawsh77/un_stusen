import 'package:flutter/material.dart';
/*void main(){
  runApp(un());

}

class un extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'unf',
      home:HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => Rad_io();
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return Scaffold(
      appBar: AppBar(
        title: Text('un'),
        centerTitle: true,
      ),
    );
  }
}

class Rad_io extends State<HomeScreen>{
  late String country;
  late String car;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Text("enter",style: TextStyle(fontSize: 30)),
          Row(children: [
            Text("usa"),
            Radio(value: "usa", groupValue: country, onChanged: (Val){
              setState(() {
               // gender = value.toString();

              country=Val!;
              print(country);});
            })

          ],)
        ],),
      ),
    );
    throw UnimplementedError();
  }


  }

*/
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
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






