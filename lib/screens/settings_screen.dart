import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            'Konto',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.security),
          title: const Text('Hasło i zabezpieczenia'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            _launchUrl(_url);
          },
        ),
        ListTile(
          leading: const Icon(Icons.notifications_none),
          title: const Text('Powiadomienia'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        const Divider(height: 32),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            'Aplikacja',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.dark_mode_outlined),
          title: const Text('Motyw ciemny'),
          trailing: Switch(value: false, onChanged: (val) {}),
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: const Text('Język'),
          subtitle: const Text('Polski'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        const Divider(height: 32),
        ListTile(
          leading: const Icon(Icons.logout, color: Colors.redAccent),
          title: const Text(
            'Wyloguj się',
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),
      ],
    );
  }
}

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
