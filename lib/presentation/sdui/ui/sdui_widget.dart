import 'package:flutter/material.dart';
import 'package:muze_innovation/data/models/sdui/sdui_data.dart';

class SduiWidget extends StatelessWidget {
  const SduiWidget({
    super.key,
    required this.sdui,
  });

  final SduiData sdui;

  @override
  Widget build(BuildContext context) {
    return sdui.map(
      scaffold: (scaffold) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor:
                scaffold.appBar.backgroundColor?.fromValue(context),
            title: SduiWidget(sdui: scaffold.appBar.title),
          ),
          body: SduiWidget(sdui: scaffold.body),
        );
      },
      column: (column) {
        return Column(
          children: column.children.map((e) => SduiWidget(sdui: e)).toList(),
        );
      },
      text: (text) {
        return Text(text.data);
      },
      imageAsset: (imageAsset) {
        return Image.asset(imageAsset.name);
      },
      unknown: (_) {
        return Container();
      },
    );
  }
}
