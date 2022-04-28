import 'package:flutter/material.dart';


class FormValidation extends StatefulWidget {
  const FormValidation({ Key? key }) : super(key: key);

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {

  // variable
  final _formKey = GlobalKey<FormState>();
  bool isCheck = false;
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Form Validation"),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child:  Column(
          children: [
            const SizedBox(height: 50),
            TextFormField(
            // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
              TextFormField(
            // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
            ),
            const SizedBox(height: 50),
            CheckboxListTile(
              secondary: const Icon(Icons.alarm),
               title: const Text('Skill Programming'),
               subtitle: Text('Php, Flutter'),
               value: this.isCheck,
                onChanged: (bool? value) {  
                    setState(() {  
                      this.isCheck = value!;
                  });  
               }  
              ),

            const SizedBox(height: 25),
            RangeSlider(
              values: _currentRangeValues, 
              max: 100,
              divisions: 5,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },  ),
            const SizedBox(height: 25),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar( 
                  const SnackBar(content: Text('Processing Data'))
                );
              }
            }, child: Text("Submit")),
          ],
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}