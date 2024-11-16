import 'package:flutter/material.dart';

class DriveDetailsScreen extends StatelessWidget {
  final Map<String, String> driveDetails = {
    'departureCity': 'Marrakech',
    'arrivalCity': 'Agadir',
    'dateTime': 'November 1, 2024, at 2:30 PM',
    'seats': '4',
    'luggage': 'Small',
    'price': '32\$',
    'driver': 'Karim Joe',
    'car': 'Toyota Corolla',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drive Details'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: driveDetails.length,
          itemBuilder: (context, index) {
            String key = driveDetails.keys.elementAt(index);
            String value = driveDetails[key]!;

            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(_getSubtitle(key)),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Action à définir lors de l'intégration avec le backend.
                },
              ),
            );
          },
        ),
      ),
    );
  }

  // Cette méthode retourne un sous-titre adapté en fonction de la clé.
  String _getSubtitle(String key) {
    switch (key) {
      case 'departureCity':
        return 'Departure City';
      case 'arrivalCity':
        return 'Arrival City';
      case 'dateTime':
        return 'Date & Time';
      case 'seats':
        return 'Seats';
      case 'luggage':
        return 'Luggage';
      case 'price':
        return 'Price';
      case 'driver':
        return 'Driver';
      case 'car':
        return 'Car';
      default:
        return '';
    }
  }
}
