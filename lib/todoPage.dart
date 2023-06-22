import 'package:flutter/material.dart';
import 'package:todo/stylePage.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}


// TODO Implement Delete all button
// TODO Implement theme change button
// TODO Complete the HomeWork before next class



class _ToDoPageState extends State<ToDoPage> {
  List<Todo> todos = [];

  final TextEditingController _titleTxtController = TextEditingController();
  final TextEditingController _descTxtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'TODO APP',
          style: TextStyle(letterSpacing: 1.0),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.brightness_4)),
          IconButton(
              onPressed: () {
                if (mounted) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("🚨 Warning"),
                          content: const Text(
                              'Do you want to clear all todos from your todo app'),
                          actions: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Cancel',
                                )),
                            TextButton(
                                onPressed: () {

                                },
                                child: const Text(
                                  'Ok',
                                )),
                          ],
                        );

                      });
                  setState(() {

                  });
                }
              },
              icon: const Icon(Icons.phonelink_erase))
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemCount: todos.length,
        separatorBuilder: (context, index) {
          return const Divider(height: 1);
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: ListTile(
              onLongPress: () {
                todos[index].isDone = !todos[index].isDone;
                if (mounted) {
                  setState(() {});
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.grey.withOpacity(0.3),
              leading: todos[index].isDone
                  ? const Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  : const Icon(
                      Icons.pending_actions_outlined,
                      color: Colors.orange,
                    ),
              title: Text(
                todos[index].title,
                style: titleTextStyle,
              ),
              subtitle: Text(todos[index].description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.edit_document,
                      color: Colors.orange,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                      todos.removeAt(index);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          showAddNewTodoModalSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  /// To do's  input functionality

  void showAddNewTodoModalSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Add New Todo',
                style: modalTitleTextStyle,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _titleTxtController,
                decoration: titleInputDecoration('ToDo Title'),
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.text,
                controller: _descTxtController,
                decoration: descInputDecoration('Todo\'s Description'),
                maxLines: 7,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_titleTxtController.text.trim().isNotEmpty &&
                        _descTxtController.text.trim().isNotEmpty) {
                      todos.add(Todo(_titleTxtController.text.trim(),
                          _descTxtController.text.trim(), false));
                    }
                    if (mounted) {
                      setState(() {});
                      _titleTxtController.clear();
                      _descTxtController.clear();
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

//To do
// To do title
// to do Description
// bool is done
class Todo {
  String title;
  String description;
  bool isDone;

  Todo(this.title, this.description, this.isDone);
}

//
// if(_titleTxtControler.text.trim().isNotEmpty && _descTxtControler.text.trim().isNotEmpty){
// todos.add(To do(_titleTxtControler.text, _descTxtControler.text, false));
//
// if(mounted){
// setState(() {
//
// });
// }
// _titleTxtControler.clear();
// _descTxtControler.clear();
// Navigator.pop(context);
// }
// ),
