import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget { // 34n dy statfule widget, 3yz tbyn ay logic tktbo bt3mlo fe setState()
  // kda: setState(() {
  //   _items.add(_controller.text);
  //   _controller.clear();
  // });
  final String? passedItem; // 1. Declare the variable
  const TodoPage({super.key, this.passedItem});


  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> { // State class da elbt7ot fyh el controller, o el list

  final List<String> _items = []; // m3ana list fdya, .add(value) , .removeAt(index)

  final TextEditingController _controller = TextEditingController(); // step 1: instantiating an object

  @override // best practice
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller, //step 2: assigning it to 'controller:'
                decoration: const InputDecoration(
                  hintText: "Enter  hna...",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton( // step 3: using it when the button is pressed
                onPressed: (){
                  String userInput = _controller.text;
                  debugPrint("User typed: $userInput");
                  setState(() { // b3d m5dto add o b3dyn clear
                    _items.add(_controller.text); // used .add(value)
                    _controller.clear();
                  });
                  _controller.clear();
                },
                child: const Text(
                  'Add Item',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Removes this screen and returns to the previous one
            },
            child: const Text('Go Back'),
          ),
              Expanded(
                child: ListView.builder(
                  itemCount: _items.length, // Tells the list how many rows to build
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_items[index]), // Displays the item at this specific position
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            _items.removeAt(index); //used .removeAt(index)
                          });

                        },
                      ),
                    );
                  },
                ),
              ),
              // Inside _TodoPageState's build method, right inside your Column:
              if (widget.passedItem != null) ...[
                Text(
                  "Message received: ${widget.passedItem}",
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
                const SizedBox(height: 16),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

