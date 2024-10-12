
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SizedBox(
          child: DecoratedBox(
            decoration:BoxDecoration(
            color:Color(0xFF121212),
          ),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                ),
              ),),
              Center(
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/images/img_spotify.png'), width: 53.0,height: 53.0,),
                    Padding(padding: EdgeInsets.only(top: 10.0), child: Center(child: Text("Millions of Songs.\nFree on Spotify."),))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                children: [
                  FilledButton(onPressed: null, child: Text("Sign up for free"),),
                  FilledButton(onPressed: null, child: Text("Sign up for free"),),
                  FilledButton(onPressed: null, child: Text("Sign up for free"),),
                  FilledButton(onPressed: null, child: Text("Sign up for free"),)
                ],
              ),),
            ],
          ),),
        ),
      ),
    );
  }
}
