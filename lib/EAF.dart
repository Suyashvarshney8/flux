import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class EAF extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<EAF> {
  var _formKey = GlobalKey<FormState>();

  final _minimumPadding = 5.0;

  var _currentItemSelected = ' ';

  @override
  TextEditingController Scrap_Controller = TextEditingController();
  TextEditingController DRI_Controller = TextEditingController();
  TextEditingController Pig_Iron_Controller = TextEditingController();
  TextEditingController Coke_Controller = TextEditingController();

  var displayResult = ' ';

  String prediction = '';

  Future<void> predictFlux() async {
    final response = await http.post(
      Uri.parse(
          'https://flask-6-l2ia.onrender.com/predict'), // Replace with your server URL
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'dri': double.parse(DRI_Controller.text),
        'coke': double.parse(Coke_Controller.text),
        'scrap': double.parse(Scrap_Controller.text),
        'pig_iron': double.parse(Pig_Iron_Controller.text),
      }),
    );

    if (response.statusCode == 200) {
      setState(() {
        displayResult = jsonDecode(response.body)['prediction'].toString();
        displayResult = displayResult.substring(1, 8);
        displayResult = 'The Flux (Lime) Predicted by our Model is ' +
            displayResult +
            ' Kg';
      });
    } else {
      throw Exception('Failed to load prediction');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.of(context)
        //         .pop(); // Navigate back when the button is pressed
        //   },
        // ),
        title: Text(
          'Flux Predictor For EAF',
          style: TextStyle(
            color: Colors.white, // Set text color to white
            fontSize: 24, // Set the font size to 24
          ),
        ),
        centerTitle: true, // Center align the title text
        backgroundColor: Colors.blue, // Set the background color to blue
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Set the radius for bottom corners
          ),
        ),
      ),

      body: Form(
        // To identify our form instance (current status of the form)  we use the key.
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.all(_minimumPadding * 2),
            child: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding * 5, bottom: _minimumPadding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                          style: textStyle,
                          controller: Scrap_Controller,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Scrap',
                              hintText: 'in Tons',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                        Container(
                          width: _minimumPadding * 5,
                        ),
                        Expanded(
                            child: TextFormField(
                          style: textStyle,
                          controller: DRI_Controller,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'DRI',
                              hintText: ' In Tons',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                          style: textStyle,
                          controller: Coke_Controller,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Coke',
                              hintText: 'in Kgs',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                        Container(
                          width: _minimumPadding * 5,
                        ),
                        Expanded(
                            child: TextFormField(
                          style: textStyle,
                          controller: Pig_Iron_Controller,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Pig Iron',
                              hintText: 'in Tons',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 20, bottom: _minimumPadding),
                  child: Row(children: <Widget>[
                    Expanded(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 14, 95,
                            162), // Set your desired background color
                      ),
                      // color: Theme.of(context).accentColor,
                      // textColor: Theme.of(context).primaryColorDark,
                      child: Text(
                        'Calculate',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            predictFlux();
                          }
                        });
                      },
                    )),
                    Container(
                      width: _minimumPadding * 3,
                    ),
                    Expanded(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 14, 95,
                            162), // Set your desired background color
                      ),
                      //color: Theme.of(context).primaryColorDark,
                      // textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Reset',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          _reset();
                        });
                      },
                    )),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.all(_minimumPadding * 2),
                  child: Text(
                    displayResult,
                    style: textStyle,
                  ),
                )
              ],
            )),
      ),
    );
  }

  void _onDropDownItemSelected(String? newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected!;
    });
  }

  void _reset() {
    DRI_Controller.text = '';
    Scrap_Controller.text = '';
    Coke_Controller.text = '';
    Pig_Iron_Controller.text = '';
  }
}
