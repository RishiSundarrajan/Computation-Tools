import 'package:flutter/material.dart';
import 'dart:math';

class calcus extends StatefulWidget {
  const calcus({super.key});

  @override
  State<calcus> createState() => _calcusState();
}

class _calcusState extends State<calcus> {
  TextEditingController rvb=TextEditingController();
  String num1="";
  String num2="";
  String opr="";
  bool clk=false;
  var neg=0;
  var pos=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Calculator", style: TextStyle(color: Colors.white, fontSize: 25, ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(Icons.wifi, color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(Icons.battery_charging_full_sharp, color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.signal_cellular_4_bar,color: Colors.white,),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 190,),
          Container(
            height: 100,
            child: TextFormField(
              controller: rvb,
              style: TextStyle(color: Colors.white, fontSize: 30),
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: "0",
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.access_time_sharp, color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.scale, color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.calculate, color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250.0),
                child: Row(
                  children: [
                    Icon(Icons.minimize, color: Colors.white,),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2='C';
                      rvb.text=num2;
                    }
                    else {
                      num1="C";
                      rvb.text=num1;
                    }},
                  child: Text("C", style: TextStyle(color: Colors.red, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: ()  {
                    if(rvb.text.length>0){
                      rvb.text = rvb.text.substring(0, rvb.text.length - 1);
                    }
                  },
                  child: Icon(Icons.backspace_outlined, color: Colors.white,),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    opr="%";
                    rvb.text="%";
                    clk=true;
                  },
                  child: Text("%", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: (){
                    {
                      opr="^";
                      rvb.text="^";
                      clk=true;
                    }
                  },
                  child: Text("^", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    print(num1);
                    double rt=sqrt(double.parse(num1));
                    rvb.text=rt.toString();
                  },
                  child: Text("√", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    opr="/";
                    rvb.text="/";
                    clk=true;
                  },
                  child: Text("/", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='7';
                      rvb.text=num2;
                    }
                    else{
                      num1+="7";
                      rvb.text=num1;
                    }
                  },
                  child: Text("7", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='8';
                      rvb.text=num2;
                    }
                    else{
                      num1+="8";
                      rvb.text=num1;
                    }
                  },
                  child: Text("8", style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='9';
                      rvb.text=num2;
                    }
                    else{
                      num1+="9";
                      rvb.text=num1;
                    }
                  },
                  child: Text("9", style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    opr="*";
                    rvb.text="*";
                    clk=true;
                  },
                  child: Text("X", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='4';
                      rvb.text=num2;
                    }
                    else {
                      num1+="4";
                      rvb.text=num1;
                    }
                  },
                  child: Text("4", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='5';
                      rvb.text=num2;
                    }
                    else {
                      num1+='5';
                      rvb.text=num1;
                    }
                  },
                  child: Text("5", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='6';
                      rvb.text=num2;
                    }
                    else{
                      num1+='6';
                      rvb.text=num1;
                    }
                  },
                  child: Text("6", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    rvb.text="-";
                    opr="-";
                    clk=true;
                  },
                  child: Text("-", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+="1";
                      rvb.text=num2;
                    }
                    else {
                      num1+="1";
                      rvb.text=num1;
                    }
                  },
                  child: Text("1", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if (clk){
                      num2+="2";
                      rvb.text=num2;
                    }
                    else {
                      num1+="2";
                      rvb.text=num1;
                    }
                  },
                  child: Text("2", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='3';
                      rvb.text=num2;
                    }
                    else {
                      num1+="3";
                      rvb.text=num1;
                    }
                  },
                  child: Text("3", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    opr="+";
                    rvb.text="+";
                    clk=true;
                  },
                  child: Text("+", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    var a = int.parse(rvb.text);
                    if(a.isNegative){
                      pos = a.abs();
                    }
                    else {
                      pos = a*-1;
                    }
                    print(pos);
                    rvb.text = pos.toString();
                  },
                  child: Text("+/-", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if(clk){
                      num2+='0';
                      rvb.text=num2;
                    }
                    else {
                      num1+='0';
                      rvb.text=num1;
                    }
                  },
                  child: Text("0", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    if (clk) {
                      num2+=".";
                      rvb.text=num2;
                    }
                    else {
                      num1+=".";
                      rvb.text=num1;
                    };
                  },
                  child: Text(".", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: TextButton(style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(
                      color: Colors.cyanAccent
                  ),
                ),
                  onPressed: () {
                    double r=double.parse(num1);
                    double v=double.parse(num2);
                    double? b;

                    if(opr=="+"){
                      b=r+v;
                    }
                    else if(opr=="-"){
                      b=r-v;
                    }
                    else if(opr=="*"){
                      b=r*v;
                    }
                    else if(opr=="/"){
                      b=r/v;
                    }
                    else if(opr=="%"){
                      b=v/100*r;
                    }
                    else if(opr=="^"){
                      b=pow(r,v) as double?;
                    }
                    rvb.text=b.toString();
                    num1=rvb.text;
                    num2="";
                  },
                  child: Text("=", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

