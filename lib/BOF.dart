import 'dart:ui';

import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'Flux Predictor',
//     home: SIForm(),
//     theme: ThemeData(
//         primaryColor: Colors.indigo,
//         secondaryHeaderColor: Colors.indigoAccent,
//         // accentColor: Colors.indigoAccent,
//         brightness: Brightness.dark),
//   ));
// }

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _formKey = GlobalKey<FormState>();

  final _minimumPadding = 5.0;

  var _currentItemSelected = ' ';

  @override
  TextEditingController HotmetalController = TextEditingController();
  TextEditingController SiController = TextEditingController();
  TextEditingController FeHMController = TextEditingController();
  TextEditingController ScrapController = TextEditingController();
  TextEditingController DRIController = TextEditingController();
  TextEditingController CBIController = TextEditingController();
  TextEditingController MgOController = TextEditingController(text: '8');
  TextEditingController BasicityController = TextEditingController(text: '2.5');
  TextEditingController FeDRIController = TextEditingController(text: '90');
  TextEditingController FeCBIController = TextEditingController(text: '90');
  TextEditingController MgoDOLOController = TextEditingController(text: '32');
  TextEditingController MgOLIMEController = TextEditingController(text: '5');
  TextEditingController CaoDOLOController = TextEditingController(text: '52');
  TextEditingController CaOLIMEController = TextEditingController(text: '78');

  var displayResult = ' ';

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
          'Flux Predictor For BOF',
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
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                          style: textStyle,
                          controller: ScrapController,
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
                          controller: SiController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Hot Metal',
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
                          controller: DRIController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'DRI',
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
                          controller: CBIController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'CBI',
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
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                          style: textStyle,
                          controller: MgOController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'MgO% in Slag',
                              hintText: ' In %',
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
                          controller: BasicityController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Basicity of Slag',
                              hintText: 'Numeric',
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
                          controller: FeCBIController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Fe% in CBI',
                              hintText: 'in %',
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
                          controller: FeCBIController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Fe% in DRI',
                              hintText: ' In %',
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
                          controller: MgoDOLOController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'MgO% in Dolo',
                              hintText: ' In %',
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
                          controller: MgOLIMEController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'MgO% in Lime',
                              hintText: ' In %',
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
                          controller: CaoDOLOController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'CaO% in Dolo',
                              hintText: ' In %',
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
                          controller: CaOLIMEController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please fill it';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'CaO% in Lime',
                              hintText: ' In %',
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
                      top: _minimumPadding * 5, bottom: _minimumPadding),
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
                            displayResult = _calculateTotalReturns();
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
                    ))
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.all(_minimumPadding * 2),
                  child: Text(
                    this.displayResult,
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

  String _calculateTotalReturns() {
    double hotmetal = parseDouble(HotmetalController.text);
    double Si = parseDouble(SiController.text);
    double FeHM = parseDouble(FeHMController.text);
    double Scrap = parseDouble(ScrapController.text);
    double DRI = parseDouble(DRIController.text);
    double CBI = parseDouble(CBIController.text);
    double MgO = parseDouble(MgOController.text);
    double Basicity = parseDouble(BasicityController.text);
    double FeDRI = parseDouble(FeDRIController.text);
    double FeCBI = parseDouble(FeCBIController.text);
    double MgoDOLO = parseDouble(MgoDOLOController.text);
    double MgoLIME = parseDouble(MgOLIMEController.text);
    double CaoDOLO = parseDouble(CaoDOLOController.text);
    double CaoLIME = parseDouble(CaOLIMEController.text);

    double fe_input = FeHM * hotmetal * 10 +
        FeDRI * DRI * 10 +
        FeCBI * CBI * 10 +
        Scrap * 1000;

    double Si_Input =
        Si * hotmetal * 10 + 3 * DRI * 10 + 3 * CBI * 10 + 3 * Scrap * 10;

    double steel =
        (fe_input * 13 - Si_Input * 24) * 100 / (13 * 99.5 - 0.006 * 24);
    double slag =
        (fe_input * 0.006 - Si_Input * 99.5) * 100 / (24 * 0.006 - 13 * 99.5);

    double dolo = slag * (MgO / 100) * 100 / 32;
    double lime = ((Basicity * (0.16 * slag) + 0.065 * slag) -
            (0.32 * 0.6 * dolo) -
            (0.5 * dolo)) /
        0.8;
    double flux = dolo + lime;

    String result =
        'Flux predicted is ${flux.toStringAsFixed(2)} Kg with ${dolo.toStringAsFixed(2)} Kg of dolo and ${lime.toStringAsFixed(2)} Kg of lime';
    return result;
  }

  double parseDouble(String text) {
    if (text.isEmpty) {
      // Handle empty input
      return 0.0; // or throw an error, depending on your requirements
    }
    try {
      return double.parse(text);
    } catch (e) {
      // Handle invalid input
      return 0.0; // or throw an error, depending on your requirements
    }
  }

  void _reset() {
    HotmetalController.text = '';
    ScrapController.text = '';
    SiController.text = '';
    FeHMController.text = '';
    DRIController.text = '';
    CBIController.text = '';
    MgOController.text = '';
    BasicityController.text = '';
    displayResult = '';
  }
}
