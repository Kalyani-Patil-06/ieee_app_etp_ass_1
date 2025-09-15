import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Home",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("April 11, 2020",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/8m0VC9D/profile.png", // replace with any image
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Text("3",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white)),
                        ),
                      )
                    ],
                  )
                ],
              ),

              SizedBox(height: 20),

              // Grid Section
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  _buildCard(Icons.tv, "Smart TV"),
                  _buildCard(Icons.wifi, "Wifi"),
                  _buildCard(Icons.thermostat, "Temperature"),
                  _buildCard(Icons.add, "Add More"),
                ],
              ),

              SizedBox(height: 20),

              // Temperature Section
              Text("Temperature",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Lorem ipsum is simply dummy",
                  style: TextStyle(color: Colors.grey)),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("20°C",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text("32°C", style: TextStyle(color: Colors.grey)),
                ],
              ),

              SizedBox(height: 10),

              // Fake Slider
              Container(
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Expanded(flex: 3, child: SizedBox()),
                  ],
                ),
              ),

              Spacer(),

              // Bottom Nav
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings, size: 28),
                  Icon(Icons.person, size: 28),
                  Icon(Icons.wb_sunny, size: 28),
                  Icon(Icons.notifications, size: 28),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, spreadRadius: 1, blurRadius: 5)
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Colors.grey[700]),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
