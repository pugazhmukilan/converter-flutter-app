import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Currency1 extends StatefulWidget {
  @override
  _Currency1State createState() => _Currency1State();
}

class _Currency1State extends State<Currency1> {
  double ind=0.0;
  double usd=0.0;
  double value=82.08;
  final TextEditingController indiancontroller = TextEditingController();
  final TextEditingController usdcontroller = TextEditingController();

  
 void function() {
   
   if (indiancontroller.text==""){
    ind=0.0;
   }
   else{
    ind= double.parse(indiancontroller.text);
   }
  if (usdcontroller.text==""){
    usd=0.0;
   }
   else{
    usd= double.parse(usdcontroller.text);
   }
  
   

   if(ind==0.0){
    indiancontroller.text=(usd*82.08).toString() ;
    
   }
   else if (usd==0.0){
    usdcontroller.text=(ind/(82.08)).toString() ;
    
   
   }
   else if (usd!=0.0 && ind !=0.0){
    usdcontroller.text= (ind/82.08).toString();
   }
   
   ind=0.0;
   usd=0.0;
}
  @override
  void dispose() {
    indiancontroller.dispose();
    usdcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 57, 44),
        title: Text("Currency Concerter",style: TextStyle(fontFamily: "pacifico",fontSize: 25.0,),
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
                      controller: indiancontroller,
                      
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        labelText: "Rupees",
                        
                        labelStyle: TextStyle(fontFamily: "Pacifico",fontSize: 20,color: Colors.white),
                        
                       suffixText: "IND",
                        border: OutlineInputBorder(),
                        hintText: "$ind",
                       
                      ),
                    ),
                ),
              ),
             
      
                
              
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextField(

                      controller: usdcontroller,
                      keyboardType: TextInputType.number,
                     
                      decoration: InputDecoration(
                      suffixText: "USD",
                       labelText: "Dollars",
                      labelStyle: TextStyle(fontFamily: "Pacifico",fontSize: 20,color: Colors.white),
                        
                        
                        border: OutlineInputBorder(),
                        hintText: "$usd",
                        
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
                  indiancontroller.clear();
                  usdcontroller.clear();
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

