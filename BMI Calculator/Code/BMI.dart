import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmw extends StatefulWidget {
  const bmw({super.key});

  @override
  State<bmw> createState() => _bmwState();
}

class _bmwState extends State<bmw> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  String value="";
  String bmivalue="";
  var color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        actions: [
          Icon(Icons.wifi),
          Icon(Icons.battery_charging_full_sharp),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.signal_cellular_4_bar),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 40,
                  width: 300,
                  color: Colors.grey,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    controller: height,
                    decoration: InputDecoration(
                      hintText: "Enter height in Metre",
                      hintStyle: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
                      labelText: "Height",
                      labelStyle: TextStyle(color: Colors.blueGrey, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(),
                          borderSide: BorderSide(color: Colors.cyanAccent)
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 300,
                color: Colors.grey,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: weight,
                  decoration: InputDecoration(
                      hintText: "Enter weight in KG",
                      hintStyle: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
                      labelText: "Weight",
                      labelStyle: TextStyle(color: Colors.blueGrey, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(),
                          borderSide: BorderSide(color: Colors.cyanAccent)
                      )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                double h = double.parse(height.text);
                double w = double.parse(weight.text);
                double meter=h/100;
                double c=0;

                c=w/(meter*meter);
                bmivalue=c.toString();
                print(c);

                setState(() {
                  if(c<18.5){
                    color = Colors.grey;
                    value= "Under Weight";
                  }
                  else if (c>=18.5 && c<=24.5){
                    color = Colors.green;
                    value= "Normal Weight";
                  }
                  else if (c>=24.6 && c<=30){
                    color = Colors.yellow;
                    value = "Over Weight";
                  }
                  else if (c>=30.1 && c<=35){
                    color = Colors.deepOrange;
                    value = "Obesity";
                  }
                  else if (c>=35){
                    color = Colors.red;
                    value = "Extreme";
                  }
                });
              }, child: Text("Calculate")),
            ),
            SizedBox(height: 30,),
            Container(
              height: 70,
              width: 180,
              decoration: BoxDecoration(
                color: color,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(value, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                  Text(bmivalue, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  child:  Text("Under Weight", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child:  Text("Normal Weight", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child:  Text("Over Weight", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                    height: 30,
                    child:  Text("Obesity", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child:  Text("Extreme", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}