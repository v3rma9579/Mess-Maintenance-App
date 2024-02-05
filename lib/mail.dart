import 'package:flutter/material.dart';
import 'package:learn/test.dart';
// import 'package:mailer/mailer.dart';
// import 'package:mailer/smtp_server.dart';

class EmailComposer extends StatefulWidget {
  const EmailComposer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmailComposerState createState() => _EmailComposerState();
}

class _EmailComposerState extends State<EmailComposer> {
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  // Future<void> sendEmail() async {
  //   final smtpServer = SmtpServer('<your_smtp_server>',
  //       username: '<your_username>', password: '<your_password>');

  //   final message = Message()
  //     ..from = Address('<your_email_address>', '<your_name>')
  //     ..recipients.add(_toController.text)
  //     ..subject = _subjectController.text
  //     ..text = _bodyController.text;

  //   try {
  //     final sendReport = await send(message, smtpServer);
  //     print('Message sent: ${sendReport.sent}');
  //     // Additional code for feedback to the user
  //   } catch (e) {
  //     print('Error occurred while sending email: $e');
  //     // Additional code for error handling
  //   }
  // }

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
