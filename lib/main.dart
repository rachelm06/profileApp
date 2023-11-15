import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Profile'),
        ),
        body: Center(child: PersonalProfile()),
      ),
    );
  }
}

class PersonalProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                'https://placekitten.com/200/200'),
              ),
              SizedBox(height: 10.0),
              Text(
                'Rachel Wu',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
                Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Hobbies: Latin Ballroom, Traveling, Piano',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'Interests: CS, AI',
                style: TextStyle(fontSize: 16.0),
              )
            
            ],
          ),
        ),
      ],
    );
  }
}
