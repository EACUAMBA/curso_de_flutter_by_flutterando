import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPageWidget> {
  String email = "", password= "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(height: 16,),
                TextField(
                  onChanged: (value){
                    password = value;
                  },
                  obscureText: true,
                  decoration: const  InputDecoration(
                    label: Text('Senha'),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(height: 16,),
                ElevatedButton(
                    onPressed: () {
                      if(email == "edilsoncuamba@gmail.com" && password == "12345"){
                        print("Entrou!");
                      }else{
                        print("Email ou senha incorecta.");
                      }
                    },
                    child: const Text("Entrar")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}