import 'package:flutter/material.dart';
import 'package:server_driven_ui_app/Utils/widget_mapping.dart';
import 'package:server_driven_ui_app/network/fire_base_remote_config.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  List<Widget> serverWidgets = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchJsonData();
  }

  fetchJsonData() async {
    var jsonData = await FireBaseRemoteConfigClass().intializeConfig();
    print(jsonData);
    setState(() {
      serverWidgets = MapDataToWidget().mapWidget(jsonData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Server Driven UI"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [...serverWidgets],
          ),
        ),
      ),
    );
  }
}
