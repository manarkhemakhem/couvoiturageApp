import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covoiturage Universitaire'),
        backgroundColor: Color.fromARGB(255, 7, 11, 255),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 11, 255),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Ajouter un trajet'),
              onTap: () {
                Navigator.pushNamed(context, '/addRide'); // Ajoutez la logique pour ajouter un trajet
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Historique des trajets'),
              onTap: () {
                Navigator.pushNamed(context, '/history'); // Ajoutez la logique pour afficher l'historique
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Déconnexion'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/'); // Déconnexion de l'application
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildCarpoolItem(
              context,
              departure: "Centre-ville, Sfax",
              arrival: "ISMMS, Sfax",
              time: "08:00 - 01 Décembre 2024",
            ),
            _buildCarpoolItem(
              context,
              departure: "Station de bus, Monastir",
              arrival: "Faculté de pharmacie",
              time: "09:30 - 01 Décembre 2024",
            ),
            _buildCarpoolItem(
              context,
              departure: "Cité Olympique, Tunis",
              arrival: "Enit, Tunis",
              time: "07:45 - 02 Décembre 2024",
            ),
            _buildCarpoolItem(
              context,
              departure: "Ariana, Tunis",
              arrival: "Institut Supérieur des Technologies",
              time: "10:00 - 02 Décembre 2024",
            ),
          ],
        ),
      ),
              floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/addRide'); // Redirige vers la page d'ajout de trajet
          },
          backgroundColor: Color.fromARGB(255, 7, 11, 255),
          child: Icon(Icons.add),
        ),
    );
  }

  Widget _buildCarpoolItem(BuildContext context, {required String departure, required String arrival, required String time}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          "Départ: $departure\nArrivée: $arrival",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("Heure: $time"),
        trailing: ElevatedButton(
          onPressed: () {
            // Logique pour rejoindre le trajet
          },
          child: Text("Rejoindre"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 7, 11, 255),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        ),
      ),
    );
  }
}
