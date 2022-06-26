import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/modal_bottom_sheet.dart';
import '../components/pages_functionalities.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do's".toUpperCase(),
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: kTDColors,
        centerTitle: true,
      ),
      body: const Todo(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTask(
                  color: kTDColors,
                  text: 'Add a To Do',
                ),
              ),
            ),
          );
        }),
        backgroundColor: kTDColors,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
