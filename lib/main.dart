import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
double sizeKARAI = 300;
double red = 0;
double green = 0;
double blue= 0;
void aumento(){
  if (sizeKARAI <=500) {
    
  setState(() {
    sizeKARAI +=50;
  });
  }


}

void diminuida(){

  if (sizeKARAI >50) {
    
  setState(() {
    sizeKARAI -=50;
  });
  }
}

void s(){
  
  setState(() {
    sizeKARAI = 50;
  });
}
void m(){
  setState(() {
    sizeKARAI = 300;
  });
}

void g(){
  setState(() {
    sizeKARAI = 500;
  });
}

void addRed(value){

setState(() {
  red = value;
});

}

void addGreen(value){
  setState(() {
    green = value;
  });
}

void addBlue(value){
  setState(() {
    blue = value;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed:diminuida,
            ),
            IconButton(
              icon: const Text('S'),
              onPressed:s,
            ),
            IconButton(
              icon: const Text('M'),
              onPressed:m,
            ),
            IconButton(
              icon: const Text('L'),
              onPressed:g,
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed:aumento,
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: sizeKARAI,
                  color: Color.fromRGBO(red.toInt() , green.toInt() , blue.toInt(), 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: red,
                      min: 0,
                      max: 255,
                      onChanged: (value) {addRed(value);},
                    ),
                  ),
                  Text(
                    '${red.toInt()}',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: green,
                      min: 0,
                      max: 255,
                      onChanged: (value) {addGreen(value);},
                    ),
                  ),
                  Text(
                    '${green.toInt()}',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: blue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {addBlue(value);},
                    ),
                  ),
                  Text(
                    '${blue.toInt()}',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}