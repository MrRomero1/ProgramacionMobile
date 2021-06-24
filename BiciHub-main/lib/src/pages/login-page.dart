import 'package:bici_hub/src/widgets/background.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
          Expanded(
            child: ClipPath(
              clipper: _MyClipper(),
              child: 
              Image(image: AssetImage("assets/fotoini.jpg" ), fit: BoxFit.cover,)


            ),
          ),
          
          Expanded(
            child: Center(
              child: Container(
                    margin: EdgeInsets.symmetric(vertical: t.height*0.2, horizontal: t.width*0.1),
                    width: t.width*0.8,
                    
                    padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                        BoxShadow(
                        color: Colors.black54,
                        blurRadius: 30.0,
                        offset: Offset(0.0, 0.75)
            )
                    
                    ]
                  ),
                
                  child: Container(
                    margin: EdgeInsets.only(top: t.height*0.02),
                    child: Column(
                      children: [
                        _GlobalText("E-MAIL"),
                        SizedBox(height: t.height*0.02,),
                        _GlobalText("PASSWORD"),
                        SizedBox(height: t.height*0.01,),
                        Text("Did you forget yout password?",style: TextStyle(color: Colors.indigo),),
                         MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),                    
                          minWidth: 200.0,
                          height: 30.0,
                          onPressed: (){},
                          color: Colors.indigo[800],
                          child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16),),
                          ),
                          Center(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                
                                     children: [
                                    Container(
                                      padding: EdgeInsets.all(1),
                                      
                                      width: t.width*0.2,

                                          decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black
                                      ),
                                      
                                    ),

                                    Container(
                                      
                                      padding: EdgeInsets.all(10),
                                      height: t.height*0.07,
                                      
                                      child: Text('OR', textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(1),
                                     
                                      width: t.width*0.2,

                                          decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black
                                      ),
                                      
                    ),
                    
                      ],

                              ),
                            
                              
                            ),
                          ),
                          Container(
                            
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue[900]
                                  ),
                                  child: Icon(FontAwesomeIcons.facebookF, color: Colors.white, ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                        colors: [Colors.blue,Colors.red,Colors.green],
                                        stops: [0.1,0.2,0.9],
                                        begin: FractionalOffset.centerLeft,
                                        end: FractionalOffset.topCenter
                                      )
                                  ),
                                  child: Icon(FontAwesomeIcons.google, color: Colors.white, ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                        colors: [Colors.orange,Colors.red,Colors.purple],
                                        stops: [0.1,0.2,0.9],
                                        begin: FractionalOffset.centerLeft,
                                        end: FractionalOffset.topCenter
                                      )
                                  ),
                                  child: Icon(FontAwesomeIcons.instagram, color: Colors.white, ),
                                )
                              ],
                              
                            ),
                          )
                      ],
                    ),
                  ),
              ),
            ),
             ),
             Expanded(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: t.height*0.10),
                padding: EdgeInsets.all(20),
                      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ) ,
                  child: Icon(FontAwesomeIcons.user,size: t.height*0.1,),
          ),
            )),
     
          
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: t.height*0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Text("You do not have an account?",style: TextStyle(color: Colors.indigo),),
                Text("Sign up",style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GlobalText extends StatelessWidget {
  _GlobalText(
    this.l
  );
 
  final String l;
  @override
  Widget build(BuildContext context) {
    return TextField(
    decoration: InputDecoration(
        labelText: l,
    
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.all(10.0)
        ),
                    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height*0.9)
      ..quadraticBezierTo(size.width*0.5, size.height*1.1, size.width, size.height*0.9)
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}