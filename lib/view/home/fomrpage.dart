// // import 'package:busines_card_maker/controller/business_card_controller.dart';
// // import 'package:flutter/material.dart';

// // class BusinessCardFormPage extends StatefulWidget {
// //   final Widget selectedTemplate;

// //   const BusinessCardFormPage({Key? key, required this.selectedTemplate})
// //       : super(key: key);

// //   @override
// //   _BusinessCardFormPageState createState() => _BusinessCardFormPageState();
// // }

// // class _BusinessCardFormPageState extends State<BusinessCardFormPage> {
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _titleController = TextEditingController();
// //   final TextEditingController _companyController = TextEditingController();
// //   final TextEditingController _sloganController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _phoneController = TextEditingController();
// //   final TextEditingController _websiteController = TextEditingController();

// //   void _createBusinessCard() {
// //     final businessCard = BusinessCardModel(
// //       name: _nameController.text,
// //       title: _titleController.text,
// //       companyName: _companyController.text,
// //       slogan: _sloganController.text,
// //       email: _emailController.text,
// //       phoneNumber: _phoneController.text,
// //       website: _websiteController.text,
// //     );

// //     Navigator.pop(context, businessCard);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Fill Your Card Details"),
// //       ),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             widget.selectedTemplate,
// //             const SizedBox(height: 20),
// //             _buildTextField(_nameController, 'Name'),
// //             _buildTextField(_titleController, 'Title'),
// //             _buildTextField(_companyController, 'Company Name'),
// //             _buildTextField(_sloganController, 'Slogan'),
// //             _buildTextField(_emailController, 'Email'),
// //             _buildTextField(_phoneController, 'Phone Number'),
// //             _buildTextField(_websiteController, 'Website'),
// //             const SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: _createBusinessCard,
// //               child: const Text("Create Business Card"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildTextField(TextEditingController controller, String label) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 8.0),
// //       child: TextField(
// //         controller: controller,
// //         decoration: InputDecoration(
// //           labelText: label,
// //           border: OutlineInputBorder(),
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:busines_card_maker/view/home/saved_card_page.dart';
// import 'package:flutter/material.dart';
// import 'package:busines_card_maker/controller/business_card_controller.dart';


// class BusinessCardFormPage extends StatefulWidget {
//   final Widget selectedTemplate;
//   final List<Map<String, dynamic>> savedCards;

//   const BusinessCardFormPage({
//     Key? key,
//     required this.selectedTemplate,
//     required this.savedCards,
//   }) : super(key: key);

//   @override
//   _BusinessCardFormPageState createState() => _BusinessCardFormPageState();
// }

// class _BusinessCardFormPageState extends State<BusinessCardFormPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _companyController = TextEditingController();
//   final TextEditingController _sloganController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _websiteController = TextEditingController();

//   void _createBusinessCard() {
//     final businessCard = BusinessCardModel(
//       name: _nameController.text,
//       title: _titleController.text,
//       companyName: _companyController.text,
//       slogan: _sloganController.text,
//       email: _emailController.text,
//       phoneNumber: _phoneController.text,
//       website: _websiteController.text,
//     );

//     // Add to the saved cards list
//     widget.savedCards.add({
//       'template': widget.selectedTemplate,
//       'data': businessCard,
//     });

//     // Navigate to SavedCardsPage
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => SavedCardsPage(savedCards: widget.savedCards),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Fill Your Card Details"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             widget.selectedTemplate,
//             const SizedBox(height: 20),
//             _buildTextField(_nameController, 'Name'),
//             _buildTextField(_titleController, 'Title'),
//             _buildTextField(_companyController, 'Company Name'),
//             _buildTextField(_sloganController, 'Slogan'),
//             _buildTextField(_emailController, 'Email'),
//             _buildTextField(_phoneController, 'Phone Number'),
//             _buildTextField(_websiteController, 'Website'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _createBusinessCard,
//               child: const Text("Create Business Card"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(TextEditingController controller, String label) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: TextField(
//         controller: controller,
//         decoration: InputDecoration(
//           labelText: label,
//           border: const OutlineInputBorder(),
//         ),
//       ),
//     );
//   }
// }

// import 'package:busines_card_maker/view/home/saved_card_page.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import 'package:busines_card_maker/controller/business_card_controller.dart';

// class BusinessCardFormPage extends StatefulWidget {
//   final Widget selectedTemplate;
//   final List<Map<String, dynamic>> savedCards;

//   const BusinessCardFormPage({
//     Key? key,
//     required this.selectedTemplate,
//     required this.savedCards,
//   }) : super(key: key);

//   @override
//   _BusinessCardFormPageState createState() => _BusinessCardFormPageState();
// }

// class _BusinessCardFormPageState extends State<BusinessCardFormPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _companyController = TextEditingController();
//   final TextEditingController _sloganController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _websiteController = TextEditingController();

//   late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

//   @override
//   void initState() {
//     super.initState();
//     _initializeNotificationPlugin();
//     _configureFCM();
//   }

//   void _initializeNotificationPlugin() {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     const InitializationSettings initializationSettings =
//         InitializationSettings(android: initializationSettingsAndroid);

//     flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//     flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   void _configureFCM() {
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       if (message.notification != null) {
//         _showNotification(
//           message.notification!.title ?? 'New Notification',
//           message.notification!.body ?? 'You have a new message.',
//         );
//       }
//     });
//   }

//   void _showNotification(String title, String body) async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'business_card_channel',
//       'Business Card Notifications',
//       channelDescription: 'Notification channel for business card updates',
//       importance: Importance.high,
//       priority: Priority.high,
//     );
//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);

//     await flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       platformChannelSpecifics,
//     );
//   }

//   void _createBusinessCard() {
//     final businessCard = BusinessCardModel(
//       name: _nameController.text,
//       title: _titleController.text,
//       companyName: _companyController.text,
//       slogan: _sloganController.text,
//       email: _emailController.text,
//       phoneNumber: _phoneController.text,
//       website: _websiteController.text,
//     );

//     // Add to the saved cards list
//     widget.savedCards.add({
//       'template': widget.selectedTemplate,
//       'data': businessCard,
//     });

//     // Show local notification
//     _showNotification(
//       'Business Card Created',
//       'Your business card has been successfully created!',
//     );

//     // Navigate to SavedCardsPage
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => SavedCardsPage(savedCards: widget.savedCards),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Fill Your Card Details"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             widget.selectedTemplate,
//             const SizedBox(height: 20),
//             _buildTextField(_nameController, 'Name'),
//             _buildTextField(_titleController, 'Title'),
//             _buildTextField(_companyController, 'Company Name'),
//             _buildTextField(_sloganController, 'Slogan'),
//             _buildTextField(_emailController, 'Email'),
//             _buildTextField(_phoneController, 'Phone Number'),
//             _buildTextField(_websiteController, 'Website'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _createBusinessCard,
//               child: const Text("Create Business Card"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(TextEditingController controller, String label) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: TextField(
//         controller: controller,
//         decoration: InputDecoration(
//           labelText: label,
//           border: const OutlineInputBorder(),
//         ),
//       ),
//     );
//   }
// }

import 'package:busines_card_maker/view/home/saved_card_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:busines_card_maker/controller/business_card_controller.dart';

class BusinessCardFormPage extends StatefulWidget {
  final Widget selectedTemplate;
  final List<Map<String, dynamic>> savedCards;

  const BusinessCardFormPage({
    Key? key,
    required this.selectedTemplate,
    required this.savedCards,
  }) : super(key: key);

  @override
  _BusinessCardFormPageState createState() => _BusinessCardFormPageState();
}

class _BusinessCardFormPageState extends State<BusinessCardFormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _sloganController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    _initializeNotificationPlugin();
    _configureFCM();
  }

  void _initializeNotificationPlugin() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void _configureFCM() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        _showNotification(
          message.notification!.title ?? 'New Notification',
          message.notification!.body ?? 'You have a new message.',
        );
      }
    });
  }

  void _showNotification(String title, String body) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'business_card_channel',
      'Business Card Notifications',
      channelDescription: 'Notification channel for business card updates',
      importance: Importance.high,
      priority: Priority.high,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      platformChannelSpecifics,
    );
  }

  void _createBusinessCard() {
    // Validate all fields
    if (_nameController.text.isEmpty ||
        _titleController.text.isEmpty ||
        _companyController.text.isEmpty ||
        _sloganController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _websiteController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all the fields.')),
      );
      return;
    }

    final businessCard = BusinessCardModel(
      name: _nameController.text,
      title: _titleController.text,
      companyName: _companyController.text,
      slogan: _sloganController.text,
      email: _emailController.text,
      phoneNumber: _phoneController.text,
      website: _websiteController.text,
    );

    // Add to the saved cards list
    widget.savedCards.add({
      'template': widget.selectedTemplate,
      'data': businessCard,
    });

    // Show local notification
    _showNotification(
      'Business Card Created',
      'Your business card has been successfully created!',
    );

    // Navigate to SavedCardsPage
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SavedCardsPage(savedCards: widget.savedCards),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill Your Card Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            widget.selectedTemplate,
            const SizedBox(height: 20),
            _buildTextField(_nameController, 'Name'),
            _buildTextField(_titleController, 'Title'),
            _buildTextField(_companyController, 'Company Name'),
            _buildTextField(_sloganController, 'Slogan'),
            _buildTextField(_emailController, 'Email'),
            _buildTextField(_phoneController, 'Phone Number'),
            _buildTextField(_websiteController, 'Website'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _createBusinessCard,
              child: const Text("Create Business Card"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: '$label *',
          border: const OutlineInputBorder(),
          errorText: controller.text.isEmpty ? '$label is required' : null,
        ),
        onChanged: (_) {
          setState(() {}); // Rebuild to update error message
        },
      ),
    );
  }
}
