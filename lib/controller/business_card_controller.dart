// // import 'dart:io';
// // import 'package:busines_card_maker/model/bussines_card_model.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';


// // final businessCardProvider =
// //     StateNotifierProvider<BusinessCardController, BusinessCard>(
// //   (ref) => BusinessCardController(),
// // );

// // class BusinessCardController extends StateNotifier<BusinessCard> {
// //   BusinessCardController()
// //       : super(BusinessCard(
// //           name: '',
// //           title: '',
// //           phone: '',
// //           email: '',
// //           website: '',
// //           company: '',
// //         ));

// //   void updateField(String key, String value) {
// //     switch (key) {
// //       case 'name':
// //         state = BusinessCard(
// //           name: value,
// //           title: state.title,
// //           phone: state.phone,
// //           email: state.email,
// //           website: state.website,
// //           company: state.company,
// //           logoUrl: state.logoUrl,
// //         );
// //         break;
// //       case 'title':
// //         state = BusinessCard(
// //           name: state.name,
// //           title: value,
// //           phone: state.phone,
// //           email: state.email,
// //           website: state.website,
// //           company: state.company,
// //           logoUrl: state.logoUrl,
// //         );
// //         break;
// //       case 'phone':
// //         state = BusinessCard(
// //           name: state.name,
// //           title: state.title,
// //           phone: value,
// //           email: state.email,
// //           website: state.website,
// //           company: state.company,
// //           logoUrl: state.logoUrl,
// //         );
// //         break;
// //       case 'email':
// //         state = BusinessCard(
// //           name: state.name,
// //           title: state.title,
// //           phone: state.phone,
// //           email: value,
// //           website: state.website,
// //           company: state.company,
// //           logoUrl: state.logoUrl,
// //         );
// //         break;
// //       case 'website':
// //         state = BusinessCard(
// //           name: state.name,
// //           title: state.title,
// //           phone: state.phone,
// //           email: state.email,
// //           website: value,
// //           company: state.company,
// //           logoUrl: state.logoUrl,
// //         );
// //         break;
// //       case 'company':
// //         state = BusinessCard(
// //           name: state.name,
// //           title: state.title,
// //           phone: state.phone,
// //           email: state.email,
// //           website: state.website,
// //           company: value,
// //           logoUrl: state.logoUrl,
// //         );
// //         break;
// //     }
// //   }

// //   Future<void> saveCard(File? logo) async {
// //     if (logo != null) {
// //       final logoUrl = await BusinessCard.uploadLogo(logo);
// //       state = BusinessCard(
// //         name: state.name,
// //         title: state.title,
// //         phone: state.phone,
// //         email: state.email,
// //         website: state.website,
// //         company: state.company,
// //         logoUrl: logoUrl,
// //       );
// //     }
// //     await state.saveToFirestore();
// //   }
// // }


// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class BusinessCard {
//   String name;
//   String title;
//   String phone;
//   String email;
//   String website;
//   String company;
//   String? logoUrl;

//   BusinessCard({
//     required this.name,
//     required this.title,
//     required this.phone,
//     required this.email,
//     required this.website,
//     required this.company,
//     this.logoUrl,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'title': title,
//       'phone': phone,
//       'email': email,
//       'website': website,
//       'company': company,
//       'logoUrl': logoUrl,
//     };
//   }

//   static Future<String> uploadLogo(File logo) async {
//     final storageRef = FirebaseStorage.instance
//         .ref()
//         .child('logos/${DateTime.now().millisecondsSinceEpoch}');
//     await storageRef.putFile(logo);
//     return await storageRef.getDownloadURL();
//   }

//   Future<void> saveToFirestore() async {
//     await FirebaseFirestore.instance.collection('business_cards').add(toMap());
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

  Map<String, dynamic> toMap() {
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
