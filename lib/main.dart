import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'github.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            const MainScreen(),
          ],
        ),
      ),
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String slackname = 'Not Your average dev';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              children: [
                Image.network(
                    'https://ca.slack-edge.com/T05FFAA91JP-U05R8UP89MK-24fa69511fb1-72'),
                Center(
                  child: Text(
                    slackname,
                    style: GoogleFonts.baloo2(
                      textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GitWeb(),
                  ));
            },
            child: SizedBox(
              width: 100,
              child: Row(
                children: [
                  Text(
                    'Open github',
                    style: GoogleFonts.baloo2(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset('images/gitcon.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
