// // import 'dart:io';
// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class BusinessCard {
// //   String name;
// //   String title;
// //   String phone;
// //   String email;
// //   String website;
// //   String company;
// //   String? logoUrl;

// //   BusinessCard({
// //     required this.name,
// //     required this.title,
// //     required this.phone,
// //     required this.email,
// //     required this.website,
// //     required this.company,
// //     this.logoUrl,
// //   });

// //   Map<String, dynamic> toMap() {
// //     return {
// //       'name': name,
// //       'title': title,
// //       'phone': phone,
// //       'email': email,
// //       'website': website,
// //       'company': company,
// //       'logoUrl': logoUrl,
// //     };
// //   }

// //   static Future<String> uploadLogo(File logo) async {
// //     final storageRef = FirebaseStorage.instance
// //         .ref()
// //         .child('logos/${DateTime.now().millisecondsSinceEpoch}');
// //     await storageRef.putFile(logo);
// //     return await storageRef.getDownloadURL();
// //   }

// //   Future<void> saveToFirestore() async {
// //     await FirebaseFirestore.instance.collection('business_cards').add(toMap());
// //   }
// // }


// // Import necessary packages
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:image_picker/image_picker.dart';

// // BusinessCard Model
// class BusinessCard {
//   String? name;
//   String? title;
//   String? phone;
//   String? email;
//   String? website;
//   String? company;
//   String? logoUrl;

//   BusinessCard({
//     this.name,
//     this.title,
//     this.phone,
//     this.email,
//     this.website,
//     this.company,
//     this.logoUrl,
//   });

//   // Upload logo to Firebase Storage
//   static Future<String?> uploadLogo(File logo) async {
//     try {
//       final storageRef = FirebaseStorage.instance
//           .ref()
//           .child('logos/${DateTime.now().millisecondsSinceEpoch}');
//       final uploadTask = await storageRef.putFile(logo);
//       if (uploadTask.state == TaskState.success) {
//         return await storageRef.getDownloadURL();
//       } else {
//         throw Exception('File upload failed');
//       }
//     } on FirebaseException catch (e) {
//       print('Firebase Storage Error: ${e.message}');
//       return null;
//     } catch (e) {
//       print('Unexpected Error: $e');
//       return null;
//     }
//   }

//   // Save to Firestore
//   Future<void> saveToFirestore() async {
//     try {
//       await FirebaseFirestore.instance.collection('business_cards').add({
//         'name': name,
//         'title': title,
//         'phone': phone,
//         'email': email,
//         'website': website,
//         'company': company,
//         'logoUrl': logoUrl,
//       });
//     } catch (e) {
//       throw Exception('Failed to save to Firestore: $e');
//     }
//   }
// }



class BusinessCardModel {
  final String name;
  final String title;
  final String companyName;
  final String slogan;
  final String email;
  final String phoneNumber;
  final String website;

  BusinessCardModel({
    required this.name,
    required this.title,
    required this.companyName,
    required this.slogan,
    required this.email,
    required this.phoneNumber,
    required this.website,
  });

  // Convert the model to a Firestore-compatible map
  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'title': title,
      'companyName': companyName,
      'slogan': slogan,
      'email': email,
      'phoneNumber': phoneNumber,
      'website': website,
    };
  }
}
