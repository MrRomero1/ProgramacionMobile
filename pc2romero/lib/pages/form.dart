import 'package:flutter/material.dart';
import 'globales.dart';

class Formulario extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        
        padding: EdgeInsets.all(20),

        child: Container(
           
            padding: const EdgeInsets.all(15.0),

            decoration: BoxDecoration(
               border: Border.all(color: Colors.grey),
               color: Colors.red[50]
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Personal', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Name(),
              SizedBox(height: 10,),
              Text('Date of Birth', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Brith(),
              SizedBox(height: 10,),
              Text('What is your favorite animal?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
               SizedBox(height: 10,),
               Btns(),
               SizedBox(height: 30,),
              Text('Account', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
              Text('Email', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Email(),
               SizedBox(height: 10,),
              Text('Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Password(),
               SizedBox(height: 10,),
              Text('Verify Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Verify(),
              SizedBox(height: 30,),
              Text('Contact', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Address', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Address(),
              SizedBox(height: 10,),
              Text('City', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              City(),
               SizedBox(height: 10,),
              Text('State', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Stats(),
               SizedBox(height: 10,),
              Text('Phone', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              Phone(),
              
              SizedBox(height: 30,),

              ProgressBarr(),
              Text('Do', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ],

          ),
        ),
        
        
        
       
      ),
    );
  }
}

class ProgressBarr extends StatefulWidget {
  const ProgressBarr({
    Key key,
  }) : super(key: key);

  @override
  _ProgressBarrState createState() => _ProgressBarrState();
}

class _ProgressBarrState extends State<ProgressBarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    height: 10,
    width: 1000,
    ); 
    
    
  }
}

class Brith extends StatelessWidget {
  const Brith({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Expanded(
          child: TextField(
             decoration: InputDecoration(
             hintText: 'Mont',
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
             
             ) ),
        Expanded(child: TextField(
             decoration: InputDecoration(
             hintText: 'Day',
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
             ) ),
        Expanded(child: TextField(
             decoration: InputDecoration(
             hintText: 'Year',
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
             ) ),
        
      ],
    );
  }
}
class Stats extends StatefulWidget {

  @override
  _StatsState createState() => _StatsState();
}
class _StatsState extends State<Stats> {

  List<String> _ciudades = ['Lima','Cuzco','Piura','Tumbes'];
  String _actual = 'Lima';
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          
          children:[

            Expanded(
              child: DropdownButton(
                
                value: _actual,
                items: getItems(),
                onChanged: (option){
                  setState(() {});
                  _actual = option;
                },
              ),
            )
          ]
        ),
       
      ],
      
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _ciudades.map((ciudad) => options.add(
      DropdownMenuItem(
        child: Text(ciudad),
        value: ciudad,
        
      )
    )).toList();
    return options;
  }
}
class Btns extends StatelessWidget {
  const Btns({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
        MaterialButton(
           
            minWidth: 20.0,
            height: 40.0,
           onPressed: () {},
             color: Colors.white,
             child: Text('Lion', style: TextStyle(color: Colors.grey)),
             
         ),
          MaterialButton(
            minWidth: 20.0,
            height: 40.0,
           onPressed: () {},
             color: Colors.white,
             child: Text('Tiger', style: TextStyle(color: Colors.grey)),
         ),
          MaterialButton(
            minWidth: 20.0,
            height: 40.0,
           onPressed: () {},
             color: Colors.white,
             child: Text('Bear', style: TextStyle(color: Colors.grey)),
         ),
          MaterialButton(
            minWidth: 20.0,
            height: 40.0,
           onPressed: () {},
             color: Colors.white,
             child: Text('Bull', style: TextStyle(color: Colors.grey)),
         ),
          MaterialButton(
            minWidth: 20.0,
            height: 40.0,
           onPressed: () {},
             color: Colors.white,
             child: Text('Serval', style: TextStyle(color: Colors.grey)),
         ),
    ],
    );
  }
}
class Phone extends StatefulWidget {
  
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  
  @override
  Widget build(BuildContext context) {
   
    return TextField(decoration: InputDecoration(
            
            hintText:('837.383.3678') ,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            
    ),);
  }
}
class City extends StatefulWidget {
  
  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    
    return TextField(decoration: InputDecoration(
            hintText:('938 Jackson St.') ,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            
    ),);
  }
}
class Address extends StatefulWidget {
  
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    
    return TextField(decoration: InputDecoration(
            hintText:('938 Jackson St.') ,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            
    ),);
  }
}

class Verify extends StatefulWidget {
  const Verify({
    Key key,
  }) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            
    ),);
  }
}

class Password extends StatefulWidget {
  const Password({
    Key key,
  }) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        
      ),
    );
  }
}

class Email extends StatefulWidget {
  const Email({
    Key key,
  }) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: ('john@johndoe.com'),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular((5))),
        
      ),
    );
  }
}

class Name extends StatefulWidget {
  

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          hintText: ('John Doe'),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          
          
          ),
          
    
    );
  }
}

