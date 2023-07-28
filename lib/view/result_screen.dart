import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  @override
  State<ResultScreen> createState() => _ResultScreenState();
  final double result;
  final double height;
  final int weight;
  final int age;
  final bool isMale;
  final String name;
  const ResultScreen(
      {required this.result,
      required this.height,
      required this.weight,
      required this.age,
      required this.isMale,
      required this.name});
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.red,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Hello, ${widget.name}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Your Result :",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 47, 44, 49),
                  ),
                  child: Column(children: [
                    Text(widget.isMale ? "Male": "Female",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),),
                    Text(
                      "Weight : ${widget.weight}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      "Height : ${widget.height.round()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      "Age : ${widget.age}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      "${widget.result}".toString().substring(0,4),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  
                  resultBmiMean(widget.result),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

Widget resultBmiMean(double result){

if(result<=18.5){
  return Text("under weight" , style: TextStyle(fontSize: 30 , color: Colors.white, fontWeight:FontWeight.bold ), );
}
else if (result>=18.5 && result<=24.9){
  return Text("normal weight", style: TextStyle(fontSize: 30 , color: Colors.white, fontWeight:FontWeight.bold ));

}

else if (result>=25 && result<=29.9){
  return Text("over weight", style: TextStyle(fontSize: 30 , color: Colors.white, fontWeight:FontWeight.bold ));

}
else if (result>=30 && result<=39.9){
  return Text("obesity", style: TextStyle(fontSize: 30 , color: Colors.white, fontWeight:FontWeight.bold ));

}
else{
  return
  Text("morbid obesity", style: TextStyle(fontSize: 30 , color: Colors.white, fontWeight:FontWeight.bold ));
}


 

}

}
