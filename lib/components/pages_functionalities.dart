import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'list_tiles.dart';
import 'add_a_task.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    final userTask = context.watch<AddATask>().task;

    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return Card(
              child: Slidable(
                key: Key(userTask[index]),
                endActionPane: ActionPane(
                  dismissible: DismissiblePane(
                    onDismissed: () {
                      setState(() {
                        Provider.of<AddATask>(context, listen: false)
                            .task
                            .remove(userTask[index]);
                      });
                    },
                  ),
                  dragDismissible: true,
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context) {
                        setState(() {
                          Provider.of<AddATask>(context, listen: false)
                              .task
                              .remove(userTask[index]);
                        });
                      }),
                      icon: Icons.delete,
                      backgroundColor: Colors.red,
                      label: 'Delete',
                    ),
                  ],
                ),
                child: TDListTile(
                  text: userTask[index],
                ),
              ),
            );
          }),
          itemCount: context.watch<AddATask>().count,
        ),
      ),
    );
  }
}

class LifeGoal extends StatefulWidget {
  const LifeGoal({Key? key}) : super(key: key);

  @override
  State<LifeGoal> createState() => _LifeGoalState();
}

class _LifeGoalState extends State<LifeGoal> {
  @override
  Widget build(BuildContext context) {
    final userTask = context.watch<AddATask2>().task;

    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return Card(
                child: Slidable(
                  key: Key(userTask[index]),
                  endActionPane: ActionPane(
                    dismissible: DismissiblePane(
                      onDismissed: () {
                        setState(() {
                          Provider.of<AddATask2>(context, listen: false)
                              .task
                              .remove(userTask[index]);
                        });
                      },
                    ),
                    dragDismissible: true,
                    motion: const StretchMotion(),
                    children: [
                      SlidableAction(
                        onPressed: ((context) {
                          setState(() {
                            Provider.of<AddATask2>(context, listen: false)
                                .task
                                .remove(userTask[index]);
                          });
                        }),
                        icon: Icons.delete,
                        backgroundColor: Colors.red,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: LGListTile(
                    text: userTask[index],
                  ),
                ),
              );
            }),
            itemCount: context.watch<AddATask2>().count,
          ),
        ));
  }
}
