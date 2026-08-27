import 'package:flutter/material.dart';

class URPage extends StatelessWidget {
  const URPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RED-FLAG UR"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // =========================
            // MENU FKTP
            // =========================
            MenuCard(
              title: "FKTP",
              subtitle: "Monitoring Temuan UR FKTP",
              icon: Icons.medical_services,
              color: Colors.blue,
              onTap: () {
                // Nanti kita isi halaman FKTP
              },
            ),

            const SizedBox(height: 20),

            // =========================
            // MENU FKRTL
            // =========================
            MenuCard(
              title: "FKRTL",
              subtitle: "Monitoring Temuan UR FKRTL",
              icon: Icons.local_hospital,
              color: Colors.green,
              onTap: () {
                // Nanti kita isi halaman FKRTL
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ========================================
// WIDGET MENU CARD
// ========================================

class MenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const MenuCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}