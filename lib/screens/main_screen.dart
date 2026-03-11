import 'package:flutter/material.dart';
import 'package:nav_bars/widgets/custom_card_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        CustomCardWidget(
          icon: Icons.analytics_outlined,
          title: 'Statystyki',
          subtitle:
              'Tutaj będą wyświetlane szczegóły aplikacji. Pod spodem znajduje się miejsce na wykresy lub więcej detali.',
          iconColor: Colors.blueAccent,
        ),
        SizedBox(height: 16),
        CustomCardWidget(
          icon: Icons.check_circle_outline,
          title: 'Wszystkie systemy aktywne',
          subtitle: 'Status: W normie',
          iconColor: Colors.green,
        ),
        SizedBox(height: 16),
        CustomCardWidget(
          icon: Icons.info_outline,
          title: 'Aktualizacja',
          subtitle: 'Nowa wersja jest dostępna',
          iconColor: Colors.orange,
        ),
      ],
    );
  }
}
