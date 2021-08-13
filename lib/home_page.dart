import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/bloc_pattern/imc_bloc_pattern_page.dart';
import 'package:flutter_default_state_manager/change_notifier/change_notifier_page.dart';
import 'package:flutter_default_state_manager/setState/imc_setstate_page.dart';
import 'package:flutter_default_state_manager/value_notifier/imc_value_notifier_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => _goToPage(context, ImcSetstatePage()),
                child: Text('setState')),
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcValueNotifierPage()),
              child: Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ChangeNotifierPage()),
              child: Text('ChangeNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcBlocPatternPage()),
              child: Text('BLOC Patters(Strems)'),
            ),
          ],
        ),
      ),
    );
  }
}
