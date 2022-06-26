import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_a_task.dart';

// ignore: must_be_immutable
class AddTask extends StatefulWidget {
  Color color;
  String text;
  AddTask({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: widget.color,
              ),
            ),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
              textAlign: TextAlign.center,
              onSubmitted: (value) {
                setState(() {
                  newTaskTitle = value;
                  context.read<AddATask>().addOneTask(newTaskTitle);
                });
                Navigator.pop(context);
              },
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              cursorColor: widget.color,
              style: const TextStyle(fontSize: 25),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: widget.color),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: widget.color),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: widget.color,
              ),
              onPressed: () {
                context.read<AddATask>().addOneTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AddTask2 extends StatefulWidget {
  Color color;
  String text;
  AddTask2({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  State<AddTask2> createState() => _AddTask2State();
}

class _AddTask2State extends State<AddTask2> {
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: widget.color,
              ),
            ),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
              textAlign: TextAlign.center,
              onSubmitted: (value) {
                setState(() {
                  newTaskTitle = value;
                  context.read<AddATask2>().addOneTask(newTaskTitle);
                });
                Navigator.pop(context);
              },
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              cursorColor: widget.color,
              style: const TextStyle(fontSize: 25),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: widget.color),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: widget.color),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: widget.color,
              ),
              onPressed: () {
                context.read<AddATask2>().addOneTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
