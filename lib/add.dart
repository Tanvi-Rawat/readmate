import 'package:flutter/material.dart';


class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}
class _AddPageState extends State<AddPageState>{
  //text input
  final TextEditingController _bookNameController = TextEditingController();
  final TextEditingController _numPagesController = TextEditingController();
  final TextEditingController _readPageController = TextEditingController();

}

@override
void dispose(){
  // prevent memory leaks
  _bookNameController.dispose();
  _numPagesController.dispose();
  _readPageController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation : 0,
        action: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
            Navigator.of(context).pop();
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //book name input
            TextField(
              controller: _bookNameController,
              decoration: const InputDecoration(
                labelText: 'Book Name',
                border : OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // space

            //no of pages input
            TextField(
              controller: _numPagesController,
              keyboardType: TextInputType.number, // Numeric keyboard
              decoration: const InputDecoration(
                labelText: 'Number of Pages',
                hintText: 'Total pages in the book',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // Spacer

            // Current Read Page Input Field
            TextField(
              controller: _readPageController,
              keyboardType: TextInputType.number, // Numeric keyboard
              decoration: const InputDecoration(
                labelText: 'Current Read Page',
                hintText: 'Your current page',
                border: OutlineInputBorder(),
              ),
            ),

          ];
        ),
      ),
    );
  }
}