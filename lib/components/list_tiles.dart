import 'package:flutter/material.dart';
import 'constants.dart';

// ignore: must_be_immutable
class TDListTile extends StatefulWidget {
  late String text;
  TDListTile({Key? key, required this.text}) : super(key: key);

  @override
  State<TDListTile> createState() => _TDListTileState();
}

class _TDListTileState extends State<TDListTile> {
  var checked = false;

  late List<Icon> icons = [
    const Icon(
      Icons.check_box_outline_blank,
      size: 40,
      color: kTDColors,
    ),
    const Icon(
      Icons.check_box_rounded,
      size: 40,
      color: kTDColors,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          checked = !checked;
        });
      },
      title: Text(
        widget.text,
        style: !checked ? kTextStyleNormal : kTextStyleChecked,
      ),
      leading: !checked ? icons[0] : icons[1],
    );
  }
}

// ignore: must_be_immutable
class LGListTile extends StatefulWidget {
  late String text;
  LGListTile({Key? key, required this.text}) : super(key: key);

  @override
  State<LGListTile> createState() => _LGListTileState();
}

class _LGListTileState extends State<LGListTile> {
  var checked = false;

  late List<Icon> icons = [
    const Icon(
      Icons.check_box_outline_blank,
      size: 40,
      color: kLGColors,
    ),
    const Icon(
      Icons.check_box_rounded,
      size: 40,
      color: kLGColors,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          checked = !checked;
        });
      },
      title: Text(
        widget.text,
        style: !checked ? kTextStyleNormal : kTextStyleChecked,
      ),
      leading: !checked ? icons[0] : icons[1],
    );
  }
}
