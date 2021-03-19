import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BelajarSharedPreferences extends StatefulWidget {
  @override
  _BelajarSharedPreferencesState createState() =>
      _BelajarSharedPreferencesState();
}

class _BelajarSharedPreferencesState extends State<BelajarSharedPreferences> {
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', controller.text);
    pref.setBool('ison', isON);
  }

  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? 'No Name';
  }

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shared Preferences'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
              ),
              Switch(
                  value: isON,
                  onChanged: (newValue) {
                    setState(() {
                      isON = newValue;
                    });
                  }),
              MaterialButton(
                  color: Colors.black,
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    saveData();
                  }),
              MaterialButton(
                  color: Colors.black,
                  child: Text('Load', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    getName().then((value) {
                      controller.text = value;
                      setState((){});
                    });
                    getON().then((value) {
                      isON = value;
                      setState((){});
                    });
                  }),
            ],
          ),
        ));
  }
}
