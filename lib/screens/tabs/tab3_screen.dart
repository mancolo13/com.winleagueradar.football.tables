import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final scorers = [
      {'name': 'Erling Haaland', 'club': 'Manchester City', 'goals': '22', 'assists': '5'},
      {'name': 'Mohamed Salah', 'club': 'Liverpool FC', 'goals': '19', 'assists': '9'},
      {'name': 'Ollie Watkins', 'club': 'Aston Villa', 'goals': '16', 'assists': '10'},
      {'name': 'Bukayo Saka', 'club': 'Arsenal FC', 'goals': '15', 'assists': '8'},
      {'name': 'Son Heung-min', 'club': 'Tottenham', 'goals': '14', 'assists': '6'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Golden Boot')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: scorers.length,
        itemBuilder: (context, i) {
          final s = scorers[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
                  child: Text('${i + 1}', style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s['name']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15), maxLines: 1, overflow: TextOverflow.ellipsis),
                      Text(s['club']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('${s['goals']} Goals', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppTheme.secondaryColor)),
                    Text('${s['assists']} Assists', style: const TextStyle(color: Colors.white54, fontSize: 12)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

