import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MapDataToWidget {
  List<Widget> serverWidgets = [];

  List<Widget> mapWidget(jsonData) {
    for (var data in jsonDecode(jsonData)) {
      String type = data['type'] ?? "";
      serverWidgets.add(toWidget(data, type));
    }
    return serverWidgets;
  }

  Widget toWidget(var data, String type) {
    switch (type) {
      case 'Container':
        return Container(
          height: data['height'].toDouble() ?? 100,
          color: HexColor(data['color']),
          padding: EdgeInsets.all(40),
          child: toWidget(data['child'], data['child']['type']),
        );
      case 'SizedBox':
        return SizedBox(
          height: data['height'].toDouble() ?? 200,
          // width: data['width'] ? data['width'].toDouble() : 200,
        );
      case 'Padding':
        return Padding(
          padding: EdgeInsets.all(data['padding']),
          child: toWidget(data['child'], data['child']['type']),
        );
      case 'TextFormField':
        return TextFormField(
          obscureText: data['obscure_text'] != null
              ? (data['obscure_text'] == 'true' ? true : false)
              : false,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: data['label'],
              hintText: data['hint']),
          onChanged: (value) {},
        );
      case "ElevatedButton":
        return ElevatedButton(
          onPressed: () {},
          child: toWidget(
            data['child'],
            data['child']['type'],
          ),
        );

      case 'Text':
        return Text(
          data['text'],
          style: TextStyle(fontSize: data['style']['size'].toDouble()),
        );
      default:
        return Text("error");
    }
  }
}
