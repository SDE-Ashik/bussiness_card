// // import 'package:busines_card_maker/controller/business_card_controller.dart';
// // import 'package:busines_card_maker/view/home/template_selection_page.dart';
// // import 'package:flutter/material.dart';

// // class BusinessCardCreationPage extends StatefulWidget {
// //   @override
// //   _BusinessCardCreationPageState createState() =>
// //       _BusinessCardCreationPageState();
// // }

// // class _BusinessCardCreationPageState extends State<BusinessCardCreationPage> {
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _titleController = TextEditingController();
// //   final TextEditingController _companyController = TextEditingController();
// //   final TextEditingController _sloganController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _phoneController = TextEditingController();
// //   final TextEditingController _websiteController = TextEditingController();

// //   void _navigateToPreview() {
// //     final businessCard = BusinessCardModel(
// //       name: _nameController.text,
// //       title: _titleController.text,
// //       companyName: _companyController.text,
// //       slogan: _sloganController.text,
// //       email: _emailController.text,
// //       phoneNumber: _phoneController.text,
// //       website: _websiteController.text,
// //     );

// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => TemplateSelect(
// //           createdCards: [businessCard], // Pass the created card as a list
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Create Business Card'),
// //       ),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             _buildTextField(_nameController, 'Name'),
// //             _buildTextField(_titleController, 'Title'),
// //             _buildTextField(_companyController, 'Company Name'),
// //             _buildTextField(_sloganController, 'Slogan'),
// //             _buildTextField(
// //               _emailController,
// //               'Email',
// //               inputType: TextInputType.emailAddress,
// //             ),
// //             _buildTextField(
// //               _phoneController,
// //               'Phone Number',
// //               inputType: TextInputType.phone,
// //             ),
// //             _buildTextField(
// //               _websiteController,
// //               'Website',
// //               inputType: TextInputType.url,
// //             ),
// //             const SizedBox(height: 20),
// //             Center(
// //               child: ElevatedButton(
// //                 onPressed: _navigateToPreview,
// //                 child: const Text('Preview Card'),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildTextField(TextEditingController controller, String label,
// //       {TextInputType inputType = TextInputType.text}) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 8.0),
// //       child: TextField(
// //         controller: controller,
// //         keyboardType: inputType,
// //         decoration: InputDecoration(
// //           labelText: label,
// //           border: OutlineInputBorder(
// //             borderRadius: BorderRadius.circular(8.0),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:busines_card_maker/controller/business_card_controller.dart';
// // import 'package:busines_card_maker/view/home/fomrpage.dart';
// // import 'package:flutter/material.dart';
// // import 'package:busines_card_maker/view/cards/business_card1.dart';
// // import 'package:busines_card_maker/view/cards/business_card2.dart';

// // class HomePage extends StatelessWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Choose Your Business Card"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: ListView(
// //           children: [
// //             GestureDetector(
// //               onTap: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => BusinessCardFormPage(
// //                       selectedTemplate: BusinessCardWidget(
// //                         businessCard: BusinessCardModel(
// //                           name: "",
// //                           title: "",
// //                           companyName: "",
// //                           slogan: "",
// //                           email: "",
// //                           phoneNumber: "",
// //                           website: "",
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 );
// //               },
// //               child: Padding(
// //                 padding: const EdgeInsets.symmetric(vertical: 8.0),
// //                 child: BusinessCardWidget(
// //                   businessCard: BusinessCardModel(
// //                     name: "Your Name",
// //                     title: "Your Title",
// //                     companyName: "Your Company",
// //                     slogan: "Your Slogan",
// //                     email: "email@example.com",
// //                     phoneNumber: "123-456-7890",
// //                     website: "www.example.com",
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             GestureDetector(
// //               onTap: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => BusinessCardFormPage(
// //                       selectedTemplate: BusinessCardWidget2(
// //                         businessCard: BusinessCardModel(
// //                           name: "",
// //                           title: "",
// //                           companyName: "",
// //                           slogan: "",
// //                           email: "",
// //                           phoneNumber: "",
// //                           website: "",
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 );
// //               },
// //               child: Padding(
// //                 padding: const EdgeInsets.symmetric(vertical: 8.0),
// //                 child: BusinessCardWidget2(
// //                   businessCard: BusinessCardModel(
// //                     name: "Your Name",
// //                     title: "Your Title",
// //                     companyName: "Your Company",
// //                     slogan: "Your Slogan",
// //                     email: "email@example.com",
// //                     phoneNumber: "123-456-7890",
// //                     website: "www.example.com",
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// // import 'package:busines_card_maker/view/home/fomrpage.dart';
// // import 'package:flutter/material.dart';

// // import 'package:busines_card_maker/view/cards/business_card1.dart';
// // import 'package:busines_card_maker/view/cards/business_card2.dart';
// // import 'package:busines_card_maker/controller/business_card_controller.dart';

// // class HomePage extends StatelessWidget {
// //   final List<Map<String, dynamic>> savedCards = [];

// //   HomePage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Choose Your Business Card"),
// //       ),
// //       body: ListView(
// //         children: [
// //           GestureDetector(
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(
// //                   builder: (context) => BusinessCardFormPage(
// //                     selectedTemplate: BusinessCardWidget(
// //                       businessCard: BusinessCardModel(
// //                         name: "",
// //                         title: "",
// //                         companyName: "",
// //                         slogan: "",
// //                         email: "",
// //                         phoneNumber: "",
// //                         website: "",
// //                       ),
// //                     ),
// //                     savedCards: savedCards,
// //                   ),
// //                 ),
// //               );
// //             },
// //             child: BusinessCardWidget(
// //               businessCard: BusinessCardModel(
// //                 name: "Your Name",
// //                 title: "Your Title",
// //                 companyName: "Your Company",
// //                 slogan: "Your Slogan",
// //                 email: "email@example.com",
// //                 phoneNumber: "123-456-7890",
// //                 website: "www.example.com",
// //               ),
// //             ),
// //           ),
// //           GestureDetector(
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(
// //                   builder: (context) => BusinessCardFormPage(
// //                     selectedTemplate: BusinessCardWidget2(
// //                       businessCard: BusinessCardModel(
// //                         name: "",
// //                         title: "",
// //                         companyName: "",
// //                         slogan: "",
// //                         email: "",
// //                         phoneNumber: "",
// //                         website: "",
// //                       ),
// //                     ),
// //                     savedCards: savedCards,
// //                   ),
// //                 ),
// //               );
// //             },
// //             child: BusinessCardWidget2(
// //               businessCard: BusinessCardModel(
// //                 name: "Your Name",
// //                 title: "Your Title",
// //                 companyName: "Your Company",
// //                 slogan: "Your Slogan",
// //                 email: "email@example.com",
// //                 phoneNumber: "123-456-7890",
// //                 website: "www.example.com",
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:busines_card_maker/view/home/fomrpage.dart';
// import 'package:busines_card_maker/view/cards/business_card1.dart';
// import 'package:busines_card_maker/view/cards/business_card2.dart';
// import 'package:busines_card_maker/controller/business_card_controller.dart';

// class HomePage extends StatefulWidget {
//   final List<Map<String, dynamic>> savedCards = [];

//   HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String? userName;

//   @override
//   void initState() {
//     super.initState();
//     fetchUserName();
//   }

//   Future<void> fetchUserName() async {
//     try {
//       final user = FirebaseAuth.instance.currentUser;
//       if (user != null) {
//         final userData = await FirebaseFirestore.instance
//             .collection('users')
//             .doc(user.uid)
//             .get();
//         setState(() {
//           userName = userData['name'] ?? 'User';
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = 'User'; // Fallback in case of an error
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Choose Your Business Card"),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: const BoxDecoration(
//                 color: Colors.blueAccent,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Business Card Maker",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     "Welcome, ${userName ?? 'Loading...'}",
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text("Home"),
//               onTap: () {
//                 Navigator.pop(context); // Close drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.save),
//               title: const Text("Saved Cards"),
//               onTap: () {
//                 Navigator.pop(context); // Close drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text("About"),
//               onTap: () {
//                 Navigator.pop(context); // Close drawer
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Select a Template to Create Your Business Card",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView(
//                 children: [
//                   _buildCardTemplate(
//                     context,
//                     BusinessCardWidget(
//                       businessCard: BusinessCardModel(
//                         name: "Your Name",
//                         title: "Your Title",
//                         companyName: "Your Company",
//                         slogan: "Your Slogan",
//                         email: "email@example.com",
//                         phoneNumber: "123-456-7890",
//                         website: "www.example.com",
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   _buildCardTemplate(
//                     context,
//                     BusinessCardWidget2(
//                       businessCard: BusinessCardModel(
//                         name: "Your Name",
//                         title: "Your Title",
//                         companyName: "Your Company",
//                         slogan: "Your Slogan",
//                         email: "email@example.com",
//                         phoneNumber: "123-456-7890",
//                         website: "www.example.com",
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCardTemplate(BuildContext context, Widget template) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => BusinessCardFormPage(
//               selectedTemplate: template,
//               savedCards: widget.savedCards,
//             ),
//           ),
//         );
//       },
//       child: Card(
//         elevation: 4,
//         margin: const EdgeInsets.symmetric(vertical: 8.0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: template,
//         ),
//       ),
//     );
//   }
// }
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:busines_card_maker/view/home/fomrpage.dart';
// // import 'package:busines_card_maker/view/cards/business_card1.dart';
// // import 'package:busines_card_maker/view/cards/business_card2.dart';
// // import 'package:busines_card_maker/controller/business_card_controller.dart';

// // class HomePage extends StatefulWidget {
// //   final List<Map<String, dynamic>> savedCards = [];

// //   HomePage({Key? key}) : super(key: key);

// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   String? userName;

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchUserName();
// //   }

// //   Future<void> fetchUserName() async {
// //     try {
// //       final user = FirebaseAuth.instance.currentUser;
// //       if (user != null) {
// //         final userData = await FirebaseFirestore.instance
// //             .collection('users')
// //             .doc(user.uid)
// //             .get();
// //         setState(() {
// //           userName = userData['username'] ?? 'User';
// //         });
// //       }
// //     } catch (e) {
// //       setState(() {
// //         userName = 'User'; // Fallback in case of an error
// //       });
// //     }
// //   }

// //   Future<void> _logout() async {
// //     try {
// //       await FirebaseAuth.instance.signOut();
// //       // Navigate to the login screen after logout
// //       Navigator.pushReplacementNamed(context, '/login');
// //     } catch (e) {
// //       // Handle logout errors if needed
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text("Logout failed: $e")),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Choose Your Business Card"),
// //       ),
// //       drawer: Drawer(
// //         child: ListView(
// //           padding: EdgeInsets.zero,
// //           children: [
// //             DrawerHeader(
// //               decoration: const BoxDecoration(
// //                 color: Colors.blueAccent,
// //               ),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text(
// //                     "Business Card Maker",
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       color: Colors.white,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   Text(
// //                     "Welcome, ${userName ?? 'Loading...'}",
// //                     style: const TextStyle(
// //                       fontSize: 14,
// //                       color: Colors.white70,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             ListTile(
// //               leading: const Icon(Icons.home),
// //               title: const Text("Home"),
// //               onTap: () {
// //                 Navigator.pop(context); // Close drawer
// //               },
// //             ),
// //             ListTile(
// //               leading: const Icon(Icons.save),
// //               title: const Text("Saved Cards"),
// //               onTap: () {
// //                 Navigator.pop(context); // Close drawer
// //               },
// //             ),
// //             ListTile(
// //               leading: const Icon(Icons.info),
// //               title: const Text("About"),
// //               onTap: () {
// //                 Navigator.pop(context); // Close drawer
// //               },
// //             ),
// //             const Divider(),
// //             ListTile(
// //               leading: const Icon(Icons.logout),
// //               title: const Text("Logout"),
// //               onTap: _logout,
// //             ),
// //           ],
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             const Text(
// //               "Select a Template to Create Your Business Card",
// //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //             ),
// //             const SizedBox(height: 16),
// //             Expanded(
// //               child: ListView(
// //                 children: [
// //                   _buildCardTemplate(
// //                     context,
// //                     BusinessCardWidget(
// //                       businessCard: BusinessCardModel(
// //                         name: "Your Name",
// //                         title: "Your Title",
// //                         companyName: "Your Company",
// //                         slogan: "Your Slogan",
// //                         email: "email@example.com",
// //                         phoneNumber: "123-456-7890",
// //                         website: "www.example.com",
// //                       ),
// //                     ),
// //                   ),
// //                   const SizedBox(height: 16),
// //                   _buildCardTemplate(
// //                     context,
// //                     BusinessCardWidget2(
// //                       businessCard: BusinessCardModel(
// //                         name: "Your Name",
// //                         title: "Your Title",
// //                         companyName: "Your Company",
// //                         slogan: "Your Slogan",
// //                         email: "email@example.com",
// //                         phoneNumber: "123-456-7890",
// //                         website: "www.example.com",
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildCardTemplate(BuildContext context, Widget template) {
// //     return GestureDetector(
// //       onTap: () {
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) => BusinessCardFormPage(
// //               selectedTemplate: template,
// //               savedCards: widget.savedCards,
// //             ),
// //           ),
// //         );
// //       },
// //       child: Card(
// //         elevation: 4,
// //         margin: const EdgeInsets.symmetric(vertical: 8.0),
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: template,
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:busines_card_maker/view/home/fomrpage.dart';
// import 'package:busines_card_maker/view/cards/business_card1.dart';
// import 'package:busines_card_maker/view/cards/business_card2.dart';
// import 'package:busines_card_maker/controller/business_card_controller.dart';

// class HomePage extends StatefulWidget {
//   final List<Map<String, dynamic>> savedCards = [];

//   HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String? userName;
//   String? errorMessage;

//   @override
//   void initState() {
//     super.initState();
//     fetchUserName();
//   }

//   Future<void> fetchUserName() async {
//     try {
//       final user = FirebaseAuth.instance.currentUser;
//       if (user != null) {
//         final userData = await FirebaseFirestore.instance
//             .collection('users')
//             .doc(user.uid)
//             .get();
//         setState(() {
//           userName = userData['username'] ?? 'User'; // Fetch 'username' field
//         });
//       }
//     } catch (e) {
//       setState(() {
//         userName = 'User'; // Fallback if fetching fails
//         errorMessage = 'Error fetching user data: $e';
//       });
//     }
//   }

//   Future<void> _logout(BuildContext context) async {
//     try {
//       await FirebaseAuth.instance.signOut();
//       Navigator.pushReplacementNamed(context, '/login'); // Navigate to login
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Logout failed: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Choose Your Business Card"),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: const BoxDecoration(
//                 color: Colors.blueAccent,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Business Card Maker",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     "Welcome, ${userName ?? 'Loading...'}",
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.white70,
//                     ),
//                   ),
//                   if (errorMessage != null)
//                     Text(
//                       errorMessage!,
//                       style: const TextStyle(color: Colors.red, fontSize: 12),
//                     ),
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text("Home"),
//               onTap: () {
//                 Navigator.pop(context); // Close drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.save),
//               title: const Text("Saved Cards"),
//               onTap: () {
//                 Navigator.pop(context); // Close drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text("About"),
//               onTap: () {
//                 Navigator.pop(context); // Close drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.logout),
//               title: const Text("Logout"),
//               onTap: () {
//                 _logout(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Select a Template to Create Your Business Card",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView(
//                 children: [
//                   _buildCardTemplate(
//                     context,
//                     BusinessCardWidget(
//                       businessCard: BusinessCardModel(
//                         name: "Your Name",
//                         title: "Your Title",
//                         companyName: "Your Company",
//                         slogan: "Your Slogan",
//                         email: "email@example.com",
//                         phoneNumber: "123-456-7890",
//                         website: "www.example.com",
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   _buildCardTemplate(
//                     context,
//                     BusinessCardWidget2(
//                       businessCard: BusinessCardModel(
//                         name: "Your Name",
//                         title: "Your Title",
//                         companyName: "Your Company",
//                         slogan: "Your Slogan",
//                         email: "email@example.com",
//                         phoneNumber: "123-456-7890",
//                         website: "www.example.com",
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCardTemplate(BuildContext context, Widget template) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => BusinessCardFormPage(
//               selectedTemplate: template,
//               savedCards: widget.savedCards,
//             ),
//           ),
//         );
//       },
//       child: Card(
//         elevation: 4,
//         margin: const EdgeInsets.symmetric(vertical: 8.0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: template,
//         ),
//       ),
//     );
//   }
// }

import 'package:busines_card_maker/view/auth/login_screen.dart';
import 'package:busines_card_maker/view/home/saved_card_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:busines_card_maker/view/home/fomrpage.dart';
import 'package:busines_card_maker/view/cards/business_card1.dart';
import 'package:busines_card_maker/view/cards/business_card2.dart';
import 'package:busines_card_maker/controller/business_card_controller.dart';

class HomePage extends StatefulWidget {
  final List<Map<String, dynamic>> savedCards = [];

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  String? userName;
  String? errorMessage;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
    fetchUserName();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> fetchUserName() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final userData = await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .get();
        setState(() {
          userName = userData['username'] ?? 'Guest';
        });
      } else {
        setState(() {
          userName = 'Guest';
        });
      }
    } catch (e) {
      setState(() {
        userName = 'Guest'; // Fallback if fetching fails
        errorMessage = 'Error fetching user data: $e';
      });
    }
  }

  Future<void> _logout(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Logout failed: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Your Business Card"),
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select a Template to Create Your Business Card",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _animationController,
                    child: ListView(
                      children: [
                        _buildCardTemplate(
                          context,
                          BusinessCardWidget(
                            businessCard: BusinessCardModel(
                              name: "Your Name",
                              title: "Your Title",
                              companyName: "Your Company",
                              slogan: "Your Slogan",
                              email: "email@example.com",
                              phoneNumber: "123-456-7890",
                              website: "www.example.com",
                            ),
                          ),
                          screenWidth,
                        ),
                        const SizedBox(height: 16),
                        _buildCardTemplate(
                          context,
                          BusinessCardWidget2(
                            businessCard: BusinessCardModel(
                              name: "Your Name",
                              title: "Your Title",
                              companyName: "Your Company",
                              slogan: "Your Slogan",
                              email: "email@example.com",
                              phoneNumber: "123-456-7890",
                              website: "www.example.com",
                            ),
                          ),
                          screenWidth,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Business Card Maker",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Welcome, ${userName ?? 'Guest'}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                // if (errorMessage != null)
                //   Text(
                //     errorMessage!,
                //     style: const TextStyle(color: Colors.red, fontSize: 12),
                //   ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.save),
            title: const Text("Saved Cards"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SavedCardsPage(savedCards: widget.savedCards)));
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SavedCardsPage(savedCards: savedCards)));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              _logout(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCardTemplate(
      BuildContext context, Widget template, double screenWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BusinessCardFormPage(
              selectedTemplate: template,
              savedCards: widget.savedCards,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: screenWidth * 0.8, // Responsive width
            child: template,
          ),
        ),
      ),
    );
  }
}
