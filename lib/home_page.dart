import 'package:flutter/material.dart';
import 'pages/sibling_page.dart';
import 'pages/ur_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DASHBOARD RED-MED"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            MenuCard(
              title: "RED-FLAG SIBLING",
              subtitle: "Monitoring tindak lanjut Temuan SIBLING",
              icon: Icons.assignment,
              color: Colors.blue,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SiblingPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            MenuCard(
              title: "RED-FLAG UR",
              subtitle: "Monitoring tindak lanjut Temuan UR",
              icon: Icons.fact_check,
              color: Colors.green,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const URPage(),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

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

              const Icon(Icons.arrow_forward_ios)

            ],
          ),
        ),
      ),
    );
  }
}