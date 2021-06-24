import 'package:bici_hub/src/widgets/background.dart';
import 'package:bici_hub/src/widgets/header.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Scaffold(
    body: Stack(
      children: [
       Background(),
        Header(),
        _Textwelcome(),
        Container(
          child: Center(
            child: ListView(
              children: [
                _Titulo("Find Local",0.25),
                _Cuerpo("HubBici has at your disposal several places for the storage of bicycles in the different districts of Lima - Peru"), 
                
                Container(
                  margin: EdgeInsets.only(top: t.width*0.2),
                  child: Row(
                    children: [
                  Container(
                     padding: EdgeInsets.all(1),
                     margin: EdgeInsets.only(left: t.width*0.09,),
                     width: t.width*0.3,

                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    
                  ),

                  Container(
                    margin: EdgeInsets.only(left: t.width*0.05, right: t.width*0.05),
                    padding: EdgeInsets.all(10),
                    height: t.height*0.07,
                    
                    child: Text('OR', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                     padding: EdgeInsets.all(1),
                     margin: EdgeInsets.only(right: t.width*0.09),
                     width: t.width*0.3,

                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    
                  ),
                  
                    ],
                    
                  ),
                ),
                _Titulo("Offer Local",0.1),
                _Cuerpo("You want to be part of the HubBici team, what are you waiting for? register your application and be a member of our family"), 
                

              ],
            ),
          ),
        )
          
      ],
    ),
    );
  }
}

class _Cuerpo extends StatelessWidget {
  const _Cuerpo(
    this.c
  );

  final String c;

  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
       margin: EdgeInsets.symmetric( horizontal: t.width*0.09),
      width: t.width*0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      child: Column(
        children: [ 
          Text(c, textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),),
          Container(
            margin: EdgeInsets.only( top: t.height*0.01),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),                    
              minWidth: 200.0,
              height: 30.0,
              onPressed: (){},
              color: Colors.indigo[800],
              child: Text("Entry", style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
          )
          
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  _Titulo(
    this.titulo,
    this.s
  );
 final String titulo;
 final double s;
  @override
  Widget build(BuildContext context) {
     final t=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: t.width*0.3,right: t.width*0.3, top: t.height*s),
       padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white
      ),
      child: Column(
        
        children: [
          Text(titulo, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

class _Textwelcome extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(
      
      margin: EdgeInsets.symmetric(vertical: t.height*0.1, horizontal: t.width*0.04),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
           children: [
              Text("Welcome to HubBici", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
           ], 
           ),
          Row(
              children: [
                Text("Select the service of ypur preference", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold))
              ],
          )
          

        ],
      ),
      
      );
  }
}

class BoxService extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),

            )
          ],
        ),
      ),
    );
  }
}

