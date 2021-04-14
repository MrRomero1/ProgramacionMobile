import 'package:flutter/material.dart';
import 'package:pracita1/boton.dart';
import 'package:pracita1/caja_texto.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

bool _checkbox = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => print('BACK'),
                color: Colors.grey[700],
              );
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          bottomOpacity: 0.0,
        ),
        
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Login Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Please Login to continue using our app',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Text('Login Instanly', style: TextStyle(
                color: Colors.grey[700]
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: EdgeInsets.symmetric(horizontal: 62, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset(
                      'images/facebook.png',
                      height: 20,
                    ),
                  ),
                  
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: EdgeInsets.symmetric(horizontal: 62, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset(
                      'images/google.png',
                      height: 20,
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 10.0,
              ),
              Text('Our login with email/mobile', style: TextStyle(
                color: Colors.grey[700]
              ),),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'E-Mail or Mobile Number',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              CajaTexto(hint: ''),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              CajaTexto(hint: ''),
              SizedBox(
                height: 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Checkbox(
                    value: _checkbox,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        _checkbox = value;
                        
                      });
                  
                    }
                    ,
                    
                  ),
                 
                  Text('Remember me', style: TextStyle(
                    color: Colors.grey[700]
                  ),),
                   SizedBox(
                width:60.0,
              ),
                  Text(
                    'Forget password?',
                    style: TextStyle(
                        color: Colors.blue[700], fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Boton(a: ''),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                  
                  Text('Dont have an account?', style: TextStyle(
                    color: Colors.grey[700]
                  ),),
                  
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue[700], fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
