import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ContactUs(
            cardColor: Colors.blue.shade50,
            textColor: Colors.blue.shade900,
            logo: const AssetImage('assets/images/medtrain_logo.png'),
            email: 'medtrain@gmail.com',
            companyName: 'Medtrain App',
            companyColor: Colors.orangeAccent,
            dividerThickness: 2,
            dividerColor: Colors.pink,
            phoneNumber: '+256 784 540888',
            githubUserName: 'Bushlarnaleba',
            tagLine: 'Medical User Training App',
            taglineColor: Colors.orangeAccent.shade100),
      ),
    );
  }
}