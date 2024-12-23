import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Example'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Image
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.readawrite.com/articles/12607/12606739/thumbnail/large.gif",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                ),
              ),
              const SizedBox(height: 20),

              // Firstname, Lastname, and Nickname
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Monthawan",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Apai",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Baifern",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Personal Information
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Hobby: กิน, นอน, ...", style: TextStyle(fontSize: 16)),
                  Text("Foodะ: ชาบู,   หมูกระทะ, ...", style: TextStyle(fontSize: 16)),
                  Text("Birthplace: กระบอกไม้ไผ่", style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 20),

              // Education
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Education:  ", style: TextStyle(fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("  elementary: Rojanawit School"),
                      Text("year: 55"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("  primary: Rojanawit School"),
                      Text("year: 57"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("  high school: Janokrong School"),
                      Text("year: 59"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("  Undergrad: Naresuan University"),
                      Text("year: 65"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
