import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.analytics_outlined,
                        color: Colors.blueAccent,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Statystyki',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Tutaj będą wyświetlane szczegóły aplikacji. Pod spodem znajduje się miejsce na wykresy lub więcej detali.',
                  style: TextStyle(
                    color: Colors.black87,
                    height: 1.5,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const ListTile(
            contentPadding: EdgeInsets.all(16),
            leading: Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 36,
            ),
            title: Text(
              'Wszystkie systemy aktywne',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text('Status: W normie'),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const ListTile(
            contentPadding: EdgeInsets.all(16),
            leading: Icon(Icons.info_outline, color: Colors.orange, size: 36),
            title: Text(
              'Aktualizacja',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text('Nowa wersja jest dostępna'),
          ),
        ),
      ],
    );
  }
}
