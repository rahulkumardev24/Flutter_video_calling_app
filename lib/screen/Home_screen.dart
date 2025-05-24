import 'package:flutter/material.dart';
import 'package:video_calling_app/screen/video_call_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CallScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
                side: BorderSide(width: 1, color: Colors.orange),
              ),
            ),
            child: Icon(
              Icons.video_camera_front_rounded,
              size: 150,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
