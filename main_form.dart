// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainForm extends StatefulWidget{

const MainForm({ Key? key }) : super(key: key);

  @override
  _MainFormState createState() => _MainFormState(); //funcao lambda para associar a classe criada
}

class _MainFormState extends State<MainForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16),

      child: Column(children: <Widget>[
        
        Row(children: <Widget>[
          
          Expanded(child: 
            TextField(decoration: 
              InputDecoration(hintText: "Email") 
            )
          ),
          SizedBox(width: 16),
          Expanded(child: 
            TextField(decoration: 
              InputDecoration(hintText: "Password") 
            )
          )
        ]),
        Row(children: <Widget>[
          
          Expanded(child: 
            TextField(decoration: 
              InputDecoration(hintText: "Adress") 
            )
          )
        ]),
        Row(children: <Widget>[

          Expanded(child: 
            TextField(decoration: 
              InputDecoration(hintText: "Adress 2") 
            )
          )
        ]),
        Row(children: <Widget>[
          Flexible( flex: 3,
            child: 
            TextField(decoration: 
              InputDecoration(hintText: "City") 
            )
          ),
          SizedBox(width: 4),
          Flexible(flex: 3,
            child: 
            DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            )
          ),
          SizedBox(width: 4),
          Flexible(flex: 1,  
            child: 
            TextField(decoration: 
              InputDecoration(hintText: ".zip"),
            )
          ),
        ]),
        SizedBox(height: 16),
        Row(children: <Widget>[
          Flexible(flex: 1,
            child: 
            TextButton(
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () { },
            child: Text('Sign in'),
          )
        )
        ])
      ]
    )
  );

  }

}


