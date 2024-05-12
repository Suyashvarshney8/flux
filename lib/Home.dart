import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flux/BOF.dart';
import 'package:flux/EAF.dart';

// class Homepage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return home_State();
//   }
// }

// class home_State extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     final _minimumPadding = 5.0;
//     TextStyle? textStyle = Theme.of(context).textTheme.titleMedium;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Flux Predictor',
//           style: TextStyle(
//             color: Colors.white, // Set text color to white
//             fontSize: 24, // Set the font size to 24
//           ),
//         ),
//         centerTitle: true, // Center align the title text
//         backgroundColor: Colors.blue, // Set the background color to blue
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(20), // Set the radius for bottom corners
//           ),
//         ),
//       ),
//       body: Form(
//         // To identify our form instance (current status of the form)  we use the key.
//         child: Padding(
//             padding: EdgeInsets.all(_minimumPadding * 2),
//             child: ListView(
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(
//                       top: _minimumPadding * 80, bottom: _minimumPadding),
//                   child: Row(children: <Widget>[
//                     Expanded(
//                         child: SizedBox(
//                             height: 80,
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: const Color.fromARGB(
//                                     255,
//                                     14,
//                                     95,
//                                     162), // Set your desired background color
//                               ),
//                               child: const Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     'BOF', // Display "BOF" on the first line
//                                     textScaleFactor: 1.5,
//                                   ),
//                                   Text(
//                                     '(Mathematical Model)', // Display "Mathematical Model" on the second line
//                                     textScaleFactor: 1.0,
//                                   ),
//                                 ],
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => SIForm()),
//                                 );
//                               },
//                             ))),
//                     Container(
//                       width: _minimumPadding * 3,
//                     ),
//                     Expanded(
//                         child: SizedBox(
//                             height: 80,
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: const Color.fromARGB(
//                                     255,
//                                     14,
//                                     95,
//                                     162), // Set your desired background color
//                               ),
//                               child: const Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     'EAF', // Display "BOF" on the first line
//                                     textScaleFactor: 1.5,
//                                   ),
//                                   Text(
//                                     '(Machine Learning Model)', // Display "Mathematical Model" on the second line
//                                     textScaleFactor: 1.0,
//                                   ),
//                                 ],
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => EAF()),
//                                 );
//                               },
//                             )))
//                   ]),
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home_State();
  }
}

class home_State extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final _minimumPadding = 5.0;
    TextStyle? textStyle = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flux Predictor',
          style: TextStyle(
            color: Colors.white, // Set text color to white
            fontSize: 24, // Set the font size to 24
          ),
        ),
        centerTitle: true, // Center align the title text
        backgroundColor: Colors.blue, // Set the background color to blue
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Set the radius for bottom corners
          ),
        ),
      ),
      body: Form(
        // To identify our form instance (current status of the form)  we use the key.
        child: Padding(
          padding: EdgeInsets.only(
              top: _minimumPadding * 10,
              bottom: _minimumPadding,
              left: _minimumPadding * 2,
              right: _minimumPadding * 2),
          child: ListView(
            children: <Widget>[
              // Card with instructions
              Card(
                elevation: 4, // Add some elevation for a shadow effect
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15.0), // Set border radius
                ),
                margin: EdgeInsets.only(bottom: _minimumPadding * 2),
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: _minimumPadding * 5),
                      Text(
                        'INSTRUCTIONS:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(221, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: _minimumPadding * 7),
                      Text(
                        'To calculate Flux consumed for Basic Oxygen Furnace, Click on BOF button and enter the required details. Clicking on Calculate button will fetch you the results. The amount of Lime and the amount of Dololime will be displayed with the total amount of Flux in Kgs',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(221, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: _minimumPadding * 5),
                      Text(
                        'To calculate Flux consumed in Electric Arc furnace, Click on EAF button and fill the required details. The amount of lime required as Flux will be displayed in Kgs',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(221, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: _minimumPadding * 5),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding * 17, bottom: _minimumPadding),
                child: Row(children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 14, 95,
                              162), // Set your desired background color
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'BOF', // Display "BOF" on the first line
                              textScaleFactor: 1.5,
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SIForm()),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: _minimumPadding * 3,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 14, 95,
                              162), // Set your desired background color
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'EAF', // Display "BOF" on the first line
                              textScaleFactor: 1.5,
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EAF()),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
