import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Temp extends StatefulWidget {
  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {

  double cel=0.0;
  double far=0.0;
  double value=82.08;
  final TextEditingController celcontroller = TextEditingController();
  final TextEditingController farcontroller = TextEditingController();

  
 void function() {
   
   if (celcontroller.text==""){
    cel=0.0;
   }
   else{
    cel= double.parse(celcontroller.text);
   }
  if (farcontroller.text==""){
    far=0.0;
   }
   else{
    far= double.parse(farcontroller.text);
   }
  
   

   if(cel==0.0){
    celcontroller.text=((far-32)*(5/9)).toString() ;
    
   }
   else if (far==0.0){
    farcontroller.text=(((cel*(9/5))+32)).toString() ;
    
   
   }
   else if (far!=0.0 && cel !=0.0){
    farcontroller.text= (((cel*(9/5))+32)).toString();
   }
   
   cel=0.0;
   far=0.0;
}
  @override
  void dispose() {
    celcontroller.dispose();
    farcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 57, 44),
        title: Text("Temperature Concerter",style: TextStyle(fontFamily: "pacifico",fontSize: 25.0,),
        ),
      ),
      body: 
        SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: TextField(
                      controller: celcontroller,
                      
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        labelText: "Celcius",
                        suffixText: " C",
                        
                        labelStyle: TextStyle(fontFamily: "Pacifico",fontSize: 20,color: Colors.white),
                        
                       
                        border: OutlineInputBorder(),
                        hintText: "$cel",
                       
                      ),
                    ),
                ),
              ),
             
      
                
              
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextField(

                      controller: farcontroller,
                      keyboardType: TextInputType.number,
                     
                      decoration: InputDecoration(
                       labelText: "Fahrenheit",
                       suffixText: " F",
                      labelStyle: TextStyle(fontFamily: "Pacifico",fontSize: 20,color: Colors.white),
                        
                        
                        border: OutlineInputBorder(),
                        hintText: "$far",
                        
                      ),
                    ),
             ),
              
           
             
            
              
              Container(
                
                margin: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 70.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom( backgroundColor:  Colors.white,shadowColor: Color.fromARGB(255, 201, 18, 4),elevation: 20,onPrimary: Colors.redAccent,) ,            
                  onPressed: (){
                  setState(() {
                  function();
                });},
                
                child: Text("Press",style: TextStyle(color: Colors.red,fontFamily: "pacifico",fontSize: 25.0),),
                
                
                ),
              ),
              Container(
                
                margin: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 70.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom( backgroundColor:  Colors.white,shadowColor: Color.fromARGB(255, 201, 18, 4),elevation: 20,onPrimary: Colors.redAccent,) ,            
                  onPressed: (){
                  setState(() {
                  celcontroller.clear();
                  farcontroller.clear();
                });},
                
                child: Text("Clear All",style: TextStyle(color: Colors.red,fontFamily: "pacifico",fontSize: 25.0),),
                
                
                ),
              ),

              
            ],
          ),
        ),
      );
  }
}

