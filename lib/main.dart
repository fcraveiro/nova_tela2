import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          CustomBody(),
          // CustomAppbar(),
          // NavBar(),
        ],
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: const <Widget>[
            Section(
              headline: 'Meditation',
              description: 'discover happiness',
              img: AssetImage('assets/dessert.jpg'),
            ),
            Section(
              headline: 'Sensations',
              description: 'feel the moment',
              img: AssetImage('assets/galaxy.jpg'),
            ),
          ],
        ),
        const Center(
          child: Section(
            headline: 'Daydream',
            description: 'go beyond the form',
            img: AssetImage('assets/beach.jpg'),
          ),
        ),
      ],
    );
  }
}

class Section extends StatelessWidget {
  final String headline;
  final String description;
  final ImageProvider img;

  const Section({
    Key? key,
    required this.headline,
    required this.description,
    required this.img,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: img,
        ),
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: headline,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            children: <TextSpan>[
              TextSpan(
                text: '\n$description',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
