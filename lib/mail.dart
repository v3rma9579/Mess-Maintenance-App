import 'package:flutter/material.dart';

class EmailComposer extends StatefulWidget {
  const EmailComposer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmailComposerState createState() => _EmailComposerState();
}

class _EmailComposerState extends State<EmailComposer> {
  // final TextEditingController _toController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Complaints'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // TextField(
            //   controller: _toController,
            //   decoration: const InputDecoration(
            //     labelText: 'To',
            //   ),
            // ),
            TextField(
              controller: _subjectController,
              decoration: const InputDecoration(
                labelText: 'Subject',
              ),
            ),
            TextField(
              controller: _bodyController,
              maxLines: 10,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                labelText: 'Body',
                filled: true,
              ),
            ),
            ElevatedButton(
              onPressed: () async {

              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
