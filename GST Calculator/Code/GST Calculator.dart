import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  TextEditingController amt = TextEditingController();
  TextEditingController gst = TextEditingController();

  String value = "";
  String value1 = "";
  String value2 = "";
  String value3 = "";

  inclusive(){
    setState(() {
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            width: double.infinity,
            color: Colors.cyanAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total inclusive Tax is:${value}", style: TextStyle(color: Colors.black),),
                Text("Inclusive Tax is:${value1}", style: TextStyle(color: Colors.black),),
                Text("Total Exclusive Tax is:${value2}", style: TextStyle(color: Colors.black),),
                Text("Exclusive Tax is:${value3}", style: TextStyle(color: Colors.black),),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text("Close Bottomsheet")
                  ),
                )
              ],
            ),
          );
        },
      );
      double a = double.parse(amt.text);
      double b = double.parse(gst.text);
      ///inclusive
      var t = 100 + b;
      var y = t/ 100;
      var u = a / y;
      print(u);

      var pri= a-u;
      print(pri);

      ///exclusive
      var c= (a*b)/100;
      var q = double.parse(amt.text)+c;

      value=u.toString();
      value1=pri.toString();
      value2=q.toString();
      value3=c.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GST Calculator"),
          actions: [
            Icon(Icons.wifi),
            Icon(Icons.battery_charging_full_sharp),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.signal_cellular_4_bar),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 5,),
            Container(
              height: 50,
              child: TextFormField(
                controller: amt,
                decoration: InputDecoration(
                    hintText: "Bill Amount",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelText: "Amount(₹)",
                    labelStyle: TextStyle(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    )
                ),
              ),
            ),
            SizedBox(height: 05,),
            Container(
              height: 50,
              child: TextFormField(
                controller: gst,
                decoration: InputDecoration(
                  hintText: "GST Percentage",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "GST(%)",
                  labelStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  inclusive();
                });
              }, child: Text("Calculate")),
            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total inclusive Tax is:${value}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                  Text("Inclusive Tax is:${value1}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                  Text("Total exclusive Tax is:${value2}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                  Text("Exclusive Tax is:${value3}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class inexgst extends StatefulWidget {
  const inexgst({super.key});

  @override
  State<inexgst> createState() => _inexgstState();
}

class _inexgstState extends State<inexgst> {
  TextEditingController amt = TextEditingController();
  TextEditingController gst = TextEditingController();
  String value = "";
  String value1 = "";
  String value2 = "";
  String value3 = "";

  inclusive(){
    setState(() {
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            width: double.infinity,
            color: Colors.cyanAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total amount with inclusive Tax: ${value2}", style: TextStyle(color: Colors.black),),
                Text("Inclusive GST: ${value3}", style: TextStyle(color: Colors.black),),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text("Close Bottomsheet")
                  ),
                )
              ],
            ),
          );
        },
      );
      double a = double.parse(amt.text);
      double b = double.parse(gst.text);

      var q = b+100;
      var w = q/100;
      var r = a/w;
      print(r);
      value2 = r.toString();

      var i = a-r;
      print(i);
      value3 = i.toString();
    });
  }
  exclusive() {
    setState(() {

      double a = double.parse(amt.text);
      double b = double.parse(gst.text);

      var c = (a*b)/100;
      var e = a+c;
      print(e);
      value = e.toString();

      var d = (a*b)/100;
      print(d);
      value1 = d.toString();

      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('GST Tax Result'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Total amount with exclusive Tax: ${value}", style: TextStyle(color: Colors.black),),
                  Text("Exclusive GST: ${value1}", style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Thank You'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GST Calculator"),
        actions: [
          Icon(Icons.wifi),
          Icon(Icons.battery_charging_full_sharp),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.signal_cellular_4_bar),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Container(
            height: 40,
            width: 300,
            child: TextFormField(
              controller: amt,
              decoration: InputDecoration(
                hintText: "Bill Amount",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Amount(₹)",
                labelStyle: TextStyle(color: Colors.blueGrey),
                border: OutlineInputBorder(
                    borderSide: BorderSide()
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 300,
              child: TextFormField(
                controller: gst,
                decoration: InputDecoration(
                  hintText: "GST Percentage",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "GST(%)",
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            setState(() {
              inclusive();
            });
          }, child: Text("Inclusive")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total amount with inclusive Tax: ${value2}", style: TextStyle(color: Colors.black),),
                  Text("Inclusive GST: ${value3}", style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          ElevatedButton(onPressed: () {
            setState(() {
              exclusive();
            });
          }, child: Text("Exclusive")),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total amount without exclusive Tax: ${value}", style: TextStyle(color: Colors.black),),
                    Text("Exclusive GST: ${value1}", style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}