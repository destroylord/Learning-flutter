import 'package:flutter/material.dart';

class FormBasic extends StatefulWidget {
  const FormBasic({ Key? key }) : super(key: key);

  @override
  State<FormBasic> createState() => _FormBasicState();
}

class _FormBasicState extends State<FormBasic> {

  // variable
  final _formKey = GlobalKey<FormState>();
  // SingingCharacter? _character = SingingCharacter.lafayette;
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Basic"),
      ),
      body: Form(
        key: _formKey,
        child: Container(padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
                decoration: new InputDecoration(
                  hintText: "example: Dafrin M",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)
                  )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
            const SizedBox(height:20),
            TextFormField(
              obscureText: true,
              decoration: new InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                icon: Icon(Icons.key),
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)
                )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: new InputDecoration(
                hintText: "Berjiwa programmer",
                labelText: "Moto Hidup",
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)
                )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your moto';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
          
            const SizedBox(height:20),
             ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar( 
                  const SnackBar(content: Text('Processing Data'))
                );
              }
            }, child: Text("Submit")),
          ]),
        )),

    );
  }
}