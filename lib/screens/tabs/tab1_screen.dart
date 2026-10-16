import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • PitchRadar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.live_tv, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Live Match Hero Banner
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.3), AppTheme.surfaceColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.4)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('PREMIER DIVISION • MATCHDAY 28', style: TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.bold)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(6)),
                      child: const Text('LIVE 72\'', style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _teamColumn('Arsenal FC', Icons.shield, '1'),
                    const Text('VS', style: TextStyle(color: Colors.white54, fontSize: 14, fontWeight: FontWeight.bold)),
                    _teamColumn('Chelsea FC', Icons.shield_outlined, '1'),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('xG: 1.84 - 1.12 • Possession: 58% - 42%', style: TextStyle(color: AppTheme.secondaryColor, fontSize: 12, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Today\'s Featured Fixtures', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _fixtureTile('Real Madrid', 'Barcelona', '2 - 1', 'FT', true),
          _fixtureTile('Bayern Munich', 'Dortmund', '3 - 2', 'FT', true),
          _fixtureTile('AC Milan', 'Inter Milan', '20:45', 'Upcoming', false),
          _fixtureTile('PSG', 'Marseille', '21:00', 'Upcoming', false),
        ],
      ),
    );
  }

  Widget _teamColumn(String name, IconData icon, String score) {
    return Column(
      children: [
        Icon(icon, size: 36, color: AppTheme.primaryColor),
        const SizedBox(height: 6),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 4),
        Text(score, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),
      ],
    );
  }

  Widget _fixtureTile(String h, String a, String score, String status, bool finished) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text('$h vs $a', style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: finished ? Colors.white10 : AppTheme.primaryColor.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(score, style: TextStyle(color: finished ? Colors.white70 : AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}

