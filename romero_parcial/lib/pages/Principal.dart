import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Stack(
          children: [
           Column(
             children: [
              
                Expanded(
              flex: 2,
              child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink[900],Colors.purple],
                  stops: [0.1,0.9],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter
                )
              ),  
            )
            ),

             Expanded(
                 flex: 4,
                 child: Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(0),
                )),
          
              
             ],


             
           ) ,
            Center(child:
             Column(
              children: [
                Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 120),
                width: 160.0,
                height: 130.0,
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    image:  DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/doug.jpg')
                          )
          )
           ),
              Container(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Pedrito Navaja ', style: TextStyle(color:Colors.white, fontSize: 15),),
                    Icon(
                      FontAwesomeIcons.edit,
                      color: Colors.white,
                        size: 24.0,
                         semanticLabel: 'Text to announce in accessibility modes',
                         ),

                   
                  ],
                ),
              )
              ],
            )),
           

           Column(
             children: [
               Expanded(child: Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:Colors.black,
                      offset: Offset(0.0, 10.0),
                      blurRadius: 5.0
                    )
                  ]
                 ),
               
                margin: EdgeInsets.only(left: 20, right: 20, top: 170, bottom: 10),
                padding: EdgeInsets.all(20),
               child: Center(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Center(
                        child: Text('USER PROFILE', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold,
                        ),),
                      ),
                      SizedBox(height: 10,),
                      TopText('User Name'),
                      GlobalField(FontAwesomeIcons.solidUserCircle ,'Enter User Name'),
                       SizedBox(height: 10,),
                      TopText('Email Id'),
                      GlobalField(FontAwesomeIcons.envelope ,'Enter Email'),
                       SizedBox(height: 10,),
                      TopText('Mobile Number'),
                      GlobalField(FontAwesomeIcons.mobileAlt,'Enter your 10 digit mobile number'),
                       SizedBox(height: 10,),
                      TopText('Date of Birth'),
                      FieldDate(),
                       SizedBox(height: 10,),
                      TopText('Sex'),
                      Sex(),
                       SizedBox(height: 10,),
                       Button()

                      



                   ],
                 ),
               ),
             )),

            
              

             ],
           )
            
            
            
          ],
        ),
        
      ),
    );
  }
}

class Button extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
      padding: EdgeInsets.all(5),
      child: Center(child: Text('SAVE', style: TextStyle(color: Colors.white, fontSize: 15),)),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
     gradient: LinearGradient(
       colors: [Colors.pink[900],Colors.purple],
       stops: [0.3,0.9],
       begin: FractionalOffset.centerLeft,
       end: FractionalOffset.centerRight
     )
              ), 
    );
  }
}

bool masculino = false;
bool femenino = false;

class Sex extends StatefulWidget {
  @override
  _SexState createState() => _SexState();
}

class _SexState extends State<Sex> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: masculino,
          onChanged: (value) {
              setState(() {
              masculino = value;
              print(masculino);
            });
            if (femenino=false) {
              setState(() {
                masculino=true;
              });
            }
          },
          activeTrackColor: Colors.purple,
          activeColor: Colors.purple[100],
        ),
        Text('Male',style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold)),
        Switch(
          value: femenino,
          onChanged: (value) {
              setState(() {
              femenino = value;
              print(femenino);
            });
            if (masculino=false) {
              setState(() {
                femenino=true;
              });
              
            }
          },
          activeTrackColor: Colors.purple,
          activeColor: Colors.purple[100],
          
        ),
        Text('Famele',style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class FieldDate extends StatefulWidget {

  @override
  _FieldDateState createState() => _FieldDateState();
}

class _FieldDateState extends State<FieldDate> {
    String _fecha = '';
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
    controller: _textEditingController,
      decoration: InputDecoration(
          hintText: 'DD / MM / YYYY',
          prefixIcon: Icon(
            Icons.date_range,
            color: Colors.purple,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(vertical:10.0)
          ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },

    );
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2022),
      initialDate: DateTime.now(),
    );
    if (date != null) {
      setState(() {});
      _fecha = date.toString();
      _textEditingController.text = _fecha;
    }
  }
}

class GlobalField extends StatelessWidget {
  final String hint;
  final IconData i;
  const GlobalField(this.i, this.hint); 
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: this.hint,
          prefixIcon: Icon(
            this.i,
            color: Colors.purple,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(vertical:10.0)
          ),
    );
  }
}

class TopText extends StatelessWidget {
  final String t;
  const TopText(
    this.t
  );
  @override
  Widget build(BuildContext context) {
    return Text(t, style: TextStyle(
      fontSize: 16, color: Colors.purple, fontWeight: FontWeight.bold));
  }
}