import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? _genderValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.red),
            onPressed: () {
              // Navigate back or perform other action
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Start Journey',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                // Handle profile image tap
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_image.jpg'),
              ),
            ),
            SizedBox(width: 10.0),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.0),
                buildLabelAndTextField('From', Icons.location_on, 'New York, USA'),
                SizedBox(height: 20.0),
                buildLabelAndTextField('To', Icons.location_on, 'Los Angeles, USA'),
                SizedBox(height: 20.0),
                buildLabelAndTextField('price', Icons.attach_money, '\$2000'),
                SizedBox(height: 20.0),
                buildLabelAndTextField('Time', Icons.access_time, '4:00 PM'),
                SizedBox(height: 20.0),
                buildLabelAndTextField('Date', Icons.calendar_today, '2024-05-03'),
                SizedBox(height: 20.0),
                buildLabelAndTextField('Plate Number', Icons.directions_car, 'ABC123'),
                SizedBox(height: 20.0),
                buildLabelAndTextField('Seats available', Icons.event_seat, '2'),
                SizedBox(height: 20.0),
                buildGenderSelection(),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle save button press
                    print('Selected gender value: $_genderValue');
                  },
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLabelAndTextField(String label, IconData icon, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(height: 10.0),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                icon: Icon(icon, color: Colors.red),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildGenderSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: _genderValue,
              onChanged: (int? value) {
                setState(() {
                  _genderValue = value;
                });
              },
            ),
            Text('Female'),
            Radio(
              value: 0,
              groupValue: _genderValue,
              onChanged: (int? value) {
                setState(() {
                  _genderValue = value;
                });
              },
            ),
            Text('Male'),
            Radio(
              value: 2,
              groupValue: _genderValue,
              onChanged: (int? value) {
                setState(() {
                  _genderValue = value;
                });
              },
            ),
            Text('Other'),
          ],
        ),
      ],
    );
  }
}
