import 'package:flutter/material.dart';
import 'package:off_nxt_lvl/components/constants.dart';
import '../components/pages_functionalities.dart';
import '../components/modal_bottom_sheet.dart';

class LifeGoalsPage extends StatefulWidget {
  const LifeGoalsPage({Key? key}) : super(key: key);

  @override
  State<LifeGoalsPage> createState() => _LifeGoalsPageState();
}

class _LifeGoalsPageState extends State<LifeGoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Life Goals'.toUpperCase(),
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: kLGColors,
        centerTitle: true,
      ),
      body: const LifeGoal(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTask2(
                  color: kLGColors,
                  text: 'Add a Life Goal',
                ),
              ),
            ),
          );
        }),
        backgroundColor: kLGColors,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
