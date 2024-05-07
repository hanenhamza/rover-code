import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Any Service',
            style: TextStyle(color: Colors.black), // Change text color to black
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.red, // Change arrow color to red
            ),
            onPressed: () {
              // Handle back button press
            },
          ),
          backgroundColor: Colors.white, // Change app bar color to white
        ),
        backgroundColor: Colors.grey[200], // Reduce scaffold background color brightness
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0), // Add padding around the GridView
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0, // Add vertical spacing between items
              crossAxisSpacing: 20.0, // Add horizontal spacing between items
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), // Reduce internal padding
                child: ServiceCard(icon: _icons[index]),
              );
            },
          ),
        ),
      ),
    );
  }

  final List<IconData> _icons = [
    Icons.directions_car,
    Icons.directions_bike,
    Icons.motorcycle,
    Icons.electric_scooter,
    Icons.directions_bus,
    Icons.directions_boat,
  ];
}

class ServiceCard extends StatelessWidget {
  final IconData icon;

  const ServiceCard({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10, // Increase elevation for more visible shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Increase border radius to make it more circular
      ),
      child: InkWell(
        onTap: () {
          // Handle tap
        },
        child: Center(
          child: Icon(
            icon,
            size: 50,
            color: Colors.red, // Change icon color to red
          ),
        ),
      ),
    );
  }
}
