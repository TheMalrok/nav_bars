import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nav_bars/l10n/app_localizations.dart';
import 'package:nav_bars/main.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            AppLocalizations.of(context)!.account,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.security),
          title: Text(AppLocalizations.of(context)!.passwordAndSecurity),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            _launchUrl(_url);
          },
        ),
        ListTile(
          leading: const Icon(Icons.notifications_none),
          title: Text(AppLocalizations.of(context)!.notifications),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        const Divider(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            AppLocalizations.of(context)!.application,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.dark_mode_outlined),
          title: Text(AppLocalizations.of(context)!.darkTheme),
          trailing: Switch(
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (val) {
              MainApp.setThemeMode(
                context,
                val ? ThemeMode.dark : ThemeMode.light,
              );
            },
          ),
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: Text(AppLocalizations.of(context)!.language),
          subtitle: Text(AppLocalizations.of(context)!.languageName),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Locale currentLocale = Localizations.localeOf(context);
            if (currentLocale.languageCode == 'pl') {
              MainApp.setLocale(context, const Locale('en'));
            } else {
              MainApp.setLocale(context, const Locale('pl'));
            }
          },
        ),
        const Divider(height: 32),
        ListTile(
          leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
          title: Text(
            AppLocalizations.of(context)!.logout,
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
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
