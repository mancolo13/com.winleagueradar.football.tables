import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final standings = [
      {'pos': '1', 'team': 'Manchester City', 'p': '28', 'gd': '+44', 'pts': '67', 'ucl': true},
      {'pos': '2', 'team': 'Liverpool FC', 'p': '28', 'gd': '+38', 'pts': '64', 'ucl': true},
      {'pos': '3', 'team': 'Arsenal London', 'p': '28', 'gd': '+35', 'pts': '63', 'ucl': true},
      {'pos': '4', 'team': 'Aston Villa', 'p': '28', 'gd': '+18', 'pts': '55', 'ucl': true},
      {'pos': '5', 'team': 'Tottenham Hotspur', 'p': '27', 'gd': '+15', 'pts': '50', 'ucl': false},
      {'pos': '6', 'team': 'Manchester United', 'p': '28', 'gd': '+2', 'pts': '47', 'ucl': false},
      {'pos': '7', 'team': 'West Ham United', 'p': '28', 'gd': '-4', 'pts': '42', 'ucl': false},
      {'pos': '8', 'team': 'Newcastle United', 'p': '28', 'gd': '+8', 'pts': '40', 'ucl': false},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Standings Table')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(12)),
            child: const Row(
              children: [
                SizedBox(width: 30, child: Text('#', style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold))),
                Expanded(child: Text('CLUB', style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold))),
                SizedBox(width: 32, child: Text('PL', style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
                SizedBox(width: 38, child: Text('GD', style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
                SizedBox(width: 38, child: Text('PTS', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.right)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          ...standings.map((s) => Container(
            margin: const EdgeInsets.only(bottom: 6),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: AppTheme.surfaceColor,
              borderRadius: BorderRadius.circular(12),
              border: Border(left: BorderSide(color: (s['ucl'] as bool) ? AppTheme.primaryColor : Colors.transparent, width: 3)),
            ),
            child: Row(
              children: [
                SizedBox(width: 30, child: Text(s['pos'] as String, style: const TextStyle(fontWeight: FontWeight.bold))),
                Expanded(child: Text(s['team'] as String, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis)),
                SizedBox(width: 32, child: Text(s['p'] as String, style: const TextStyle(color: Colors.white70), textAlign: TextAlign.center)),
                SizedBox(width: 38, child: Text(s['gd'] as String, style: const TextStyle(color: Colors.white70), textAlign: TextAlign.center)),
                SizedBox(width: 38, child: Text(s['pts'] as String, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 15), textAlign: TextAlign.right)),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

