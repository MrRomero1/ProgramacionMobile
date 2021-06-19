import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
               SeparadorV(0.02),
              Favourites(),
               SeparadorV(0.02),
               
              PvS(),
              SeparadorV(0.02),
             Texto('ALL', 30),
             SeparadorV(0.02),
              CsP()

            ],
          ),
        ),
        
      ),
       bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.green,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.green)
          )
        ),
        child: BottomNavigationBar(
          items: [
             BottomNavigationBarItem(icon: IconBar(Icons.home_filled), label: ''),

            BottomNavigationBarItem(icon: IconBar(Icons.search), label: ''),
               BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart, color: Colors.indigoAccent[700],size:40 ), label: '', ),
            BottomNavigationBarItem(icon: IconBar(FontAwesomeIcons.facebookMessenger), label: '', ),
           BottomNavigationBarItem(icon: IconBar(FontAwesomeIcons.user), label: '', ),
          ] ,
          ),
      )
      
    );
  }
}


class ContentAll extends StatelessWidget {
 
 ContentAll(
   this._n,
   this._i
 );
final String _n;
final String  _i; 
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
               border: Border.all(color: Colors.grey[300]),
               borderRadius: BorderRadius.circular(20),
               color: Colors.white
              ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Image(image: AssetImage(_i),height: 100.0, width: 100.0,),
            
            Container(
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_n,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Row(
                   
                    children: [
          
                          Text('4,0'),
                          SeparadorH(0.02),
                           Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                          Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                           Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                           Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                           Icon(Icons.star,size: 10,),
                           SizedBox(width:t.width*0.3),
                  ],)
                  
                ],
              ),
            ),
            
            Icon(Icons.more_vert,size: 40, color: Colors.grey[300],)
          ],
          
        ),
      ),
    );
  }





}

class IconBar extends StatelessWidget {
  IconBar(
    this.i
  );
  final IconData i;

  @override
  Widget build(BuildContext context) {
    return Icon(this.i,color: Colors.grey[400],size:40 ,);
  }
}

class PvS extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return 
    Column(
      
      children: [
        Container(
          
          
          height: t.height*0.18,
          width: double.infinity,
          child:
          PageView(
           pageSnapping: false,
            controller: PageController(
              viewportFraction: 0.9
            ),
            children: [
             ContentF ( Image(image: AssetImage('images/f.png'), ),'Washer Machine'),
              ContentF ( Image(image: AssetImage('images/g.png'), ),'Dryer Machine'),
              ContentF ( Image(image: AssetImage('images/g.png'), ),'Dryer Machine'),

            ],
          )
           )
      ],
    );
    
    
  }
}



class ContentF extends StatelessWidget {
ContentF(
this._i,
this._n
);
final Image _i;
final String _n;
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Container(

      padding: EdgeInsets.all(30) ,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
               border: Border.all(color: Colors.grey[100]),
               borderRadius: BorderRadius.circular(20),
               color: Colors.white
              ),
              child: Column(
               children: [
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _i,
                  
                  Container(
                    child: Center(
                      child: Column(children: [
                        Icon(FontAwesomeIcons.paperPlane,color: Colors.indigo[700] ,)
                          
                      ],),
                    ),
                  )
                  
                ],
                 ),
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SeparadorV(0.01,),
                       Texto(_n,19 ),
                       SeparadorV(0.01,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         
                           Text('Ready Wash Stainless',style: TextStyle(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.bold )),
                         
                           Row(
                             children: [
                               Text('4,0'),
                          
                           Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                          Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                           Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                           Icon(Icons.star,size: 10, color: Colors.indigoAccent[200],),
                           Icon(Icons.star,size: 10,),
                          
                             ],
                           )
                           
                         ],
                       )
                     ],
                   )
                 
               ],
              ),

    );
  }
}

class Favourites extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
          Texto('favourites', 25),
          MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),        
          minWidth: 90.0,
          height: 30.0,
          onPressed: () {},
          color: Colors.indigoAccent[400],
          child: Text('VIEW ALL', style: TextStyle(color: Colors.white, fontSize: 12)),
        ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(FontAwesomeIcons.bars,),
          Texto('Kudos',30),
          Icon(Icons.shopping_bag_outlined),
        
        ],
      ),
    );
  }
}

class SeparadorV extends StatelessWidget {
 SeparadorV(
   this._d
 );

final double _d;
  @override
  Widget build(BuildContext context) {
     final t=MediaQuery.of(context).size;
    return SizedBox(
      height: t.height*_d,
    );
    
  }
}

class SeparadorH extends StatelessWidget {
 SeparadorH(
   this._d
 );

final double _d;
  @override
  Widget build(BuildContext context) {
     final t=MediaQuery.of(context).size;
    return SizedBox(
      width: t.width*_d,
    );
    
  }
}

class Texto extends StatelessWidget {
Texto(
this._t,
this._fs
);

  final String _t;

  final double _fs;

  @override
  Widget build(BuildContext context) {
    return Text(_t, style: TextStyle(color: Colors.black, fontSize: _fs, fontWeight: FontWeight.bold),);
  }
}

class CsP extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     final t=MediaQuery.of(context).size;
    return Container(
    
     
        
        child: Expanded(
                  child: SingleChildScrollView(
            
            child: Column(
              
              children: [
              
              
              SeparadorV(0.01),
              ContentAll('MicroWave Oven','images/a.png'),
              SeparadorV(0.01),
              ContentAll('Whisk','images/b.png'),
               SeparadorV(0.01),
              ContentAll('Speakers','images/c.png'),
               SeparadorV(0.01),
              ContentAll('Air Conditioner','images/d.png'),
               SeparadorV(0.01),
              ContentAll('Television','images/e.png'),
              

            ],),
          ),
        )
      
    );
  }
}