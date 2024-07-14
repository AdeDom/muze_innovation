import 'package:flutter/material.dart';
import 'package:muze_innovation/data/models/sdui/edge_insets_sdui.dart';
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
          mainAxisAlignment: column.mainAxisAlignment,
          mainAxisSize: column.mainAxisSize,
          crossAxisAlignment: column.crossAxisAlignment,
          textDirection: column.textDirection,
          verticalDirection: column.verticalDirection,
          textBaseline: column.textBaseline,
          children: column.children.map((e) => SduiWidget(sdui: e)).toList(),
        );
      },
      row: (row) {
        return Row(
          mainAxisAlignment: row.mainAxisAlignment,
          mainAxisSize: row.mainAxisSize,
          crossAxisAlignment: row.crossAxisAlignment,
          textDirection: row.textDirection,
          verticalDirection: row.verticalDirection,
          textBaseline: row.textBaseline,
          children: row.children.map((e) => SduiWidget(sdui: e)).toList(),
        );
      },
      stack: (stack) {
        return Stack(
          alignment: stack.alignment.fromValue(),
          textDirection: stack.textDirection,
          fit: stack.fit,
          clipBehavior: stack.clipBehavior,
          children: stack.children.map((e) => SduiWidget(sdui: e)).toList(),
        );
      },
      center: (center) {
        return Center(
          widthFactor: center.widthFactor,
          heightFactor: center.heightFactor,
          child: SduiWidget(sdui: center.child),
        );
      },
      container: (container) {
        return Container(
          padding: container.padding?.fromPadding(),
          color: container.color?.fromValue(),
          width: container.width,
          height: container.height,
          clipBehavior: container.clipBehavior,
          child: SduiWidget(sdui: container.child),
        );
      },
      padding: (padding) {
        return Padding(
          padding: padding.padding.fromPadding(),
          child: SduiWidget(sdui: padding.child),
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
