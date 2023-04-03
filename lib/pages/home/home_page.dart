import 'package:flutter/material.dart';

import 'package:flutter_default_state_manager/pages/bloc_pattern/imc_bloc_pattern_page.dart';
import 'package:flutter_default_state_manager/pages/change_notifier/imc_change_notifier_page.dart';
import 'package:flutter_default_state_manager/pages/setState/imc_setstate_page.dart';
import 'package:flutter_default_state_manager/pages/value_notifier/imc_value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Home Page',
        style: TextStyle(color: Colors.white),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Gerência de Estados',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            const SizedBox(height: 40),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () => _goToPage(context, const ImcSetStatePage()),
                child: const Text(
                  'SetState',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () =>
                    _goToPage(context, const ImcValueNotifierPage()),
                child: const Text(
                  'ValueNotifier',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () =>
                    _goToPage(context, const ImcChangeNotifierPage()),
                child: const Text(
                  'ChangeNotifier',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () => _goToPage(context, const ImcBlocPatternPage()),
                child: const Text(
                  'Bloc Pattern (Streams)',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
