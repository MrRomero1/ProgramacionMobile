import 'package:bici_hub/src/widgets/background.dart';
import 'package:bici_hub/src/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';


class StatusC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          
          Header(),

          Expanded(
              child: Center(
                child: Container(
                   margin: EdgeInsets.only(top: t.height*0.1),
                  width: t.width*0.8,
                  height: t.height*0.8,
                  padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("STATUS",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Here you can see the status of your bike",style: TextStyle(color:Colors.grey,fontSize: 12, fontWeight: FontWeight.bold),),
                  
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: t.height*0.02, bottom: t.height*0.02),
                        child: new CircularPercentIndicator(
                          radius: t.height*0.3,
                          
                          lineWidth: 15.0,
                          percent: 0.20,
                          center: Image(image: AssetImage("assets/bici.png"), fit: BoxFit.cover,),
                          progressColor: Colors.green,
                         ),
                      ),
                      
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text("1:00",style: TextStyle(fontFamily:"Big",color:Colors.black,fontSize: t.height*0.05)),
                          Text("hrs.",style: TextStyle(fontFamily:"Big",color:Colors.black,fontSize: t.height*0.02)),
                          Text("TO PAY UNTIL NOW",style: TextStyle(color:Colors.black,fontSize: t.height*0.02, height: t.height*0.003,fontWeight: FontWeight.bold)),
                        
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("S./ 2.00 ",style: TextStyle(color:Colors.black,fontSize: t.height*0.02,height: t.height*0.002, fontWeight: FontWeight.bold)),
                              Icon(FontAwesomeIcons.coins)
                            ],
                          ),
                        ),
                         MaterialButton(
                           
                          shape: RoundedRectangleBorder(
                            
                            borderRadius: BorderRadius.circular(10)
                          ),
                                              
                          minWidth: 200.0,
                          height: t.height*0.04,
                          onPressed: (){},
                          color: Colors.indigo[800],
                          child: Text("GO", style: TextStyle(color: Colors.white, fontSize: 16),),
                          ),

                        ],
                      )),
                     
                   
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