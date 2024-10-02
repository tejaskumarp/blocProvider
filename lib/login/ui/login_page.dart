import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled1/welcome/ui/welcome_page.dart';

class loginPage extends ConsumerWidget {
  // const loginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /* ref.listen(authenticationProvider);*/
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 50, left: 100, right: 100),
              child: Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Image.asset('assets/images/aat_logo.png'),
              ),
            ),
            const Text('Language', textAlign: TextAlign.left),
            DropdownButton<String>(
              items: <String>['English(HK)'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 40, right: 40),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 40, right: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo, elevation: 6),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => WelcomePage()));
              },
              child: const Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
