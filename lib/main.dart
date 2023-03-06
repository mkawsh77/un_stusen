import 'package:flutter/material.dart';
import 'package:un_stusen/view/app.dart';
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
  runApp(Activity_5_Widget());
}

class Activity_5_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home_Screen ()
    );
  }
}







