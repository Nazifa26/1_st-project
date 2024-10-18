
import 'package:flutter/material.dart';
import 'package:myapp/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
       
        children: [
          Text("What'\s your number ?",
         
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            
          ),
          
          
          ),
          SizedBox(height: 10,),

          Text('We\ll check if you have an account',
          style: TextStyle(
            fontSize: 18,
          ),
          
          ),
          SizedBox(height: 12,),
          
            Container(
            height:56 ,
            width:255 ,
            
            padding: EdgeInsets.all(10),

            child: Row(
              
              children: [
               
               
                
              Expanded(child:
              TextFormField(
                decoration: AppInputDecoration(),
               
              ),
              
               ),
               SizedBox(width: 15),

               Expanded(child:
              SizedBox(
                
                  height: 56,
                  width:255 ,
                  child: TextFormField(
                    decoration: AppInputDecoration2(), 
                   
                  ),
                ),
              ),
              
               
               
                    ],
              
             
            
            ),
            
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(28),
           width: double.infinity,
                child:ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed:(){}, 
                  child:Text('Continue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    
                  ),
                  )) ,
               ),
              
          
          

        ],
      ),
      
      );
  }
}
