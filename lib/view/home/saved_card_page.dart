

// import 'package:busines_card_maker/controller/firebase_dynamic_links.dart';
// import 'package:busines_card_maker/view/cards/business_card1.dart';
// import 'package:busines_card_maker/view/cards/business_card2.dart';
// import 'package:busines_card_maker/view/home/fomrpage.dart';

// import 'package:flutter/material.dart';
// import 'package:busines_card_maker/controller/business_card_controller.dart';
// import 'package:share_plus/share_plus.dart';

// class SavedCardsPage extends StatefulWidget {
//   final List<Map<String, dynamic>> savedCards;

//   const SavedCardsPage({Key? key, required this.savedCards}) : super(key: key);

//   @override
//   _SavedCardsPageState createState() => _SavedCardsPageState();
// }

// class _SavedCardsPageState extends State<SavedCardsPage> {
//   final FirebaseDynamicLinksService _dynamicLinksService =
//       FirebaseDynamicLinksService();

//   // Share Business Card using Dynamic Links
//   void _shareBusinessCard(BuildContext context, String cardId) async {
//     try {
//       final String dynamicLink =
//           await _dynamicLinksService.createDynamicLink(cardId);
//       Share.share('Check out my business card: $dynamicLink');
//       // final String dynamicLink =
//       //     await dynamicLinkService.createDynamicLink(cardId);
//       if (dynamicLink.isNotEmpty) {
//         Share.share('Check out my business card: $dynamicLink');
//       } else {
//         print('Dynamic link generation failed');
//       }

//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error generating link: $e')),
//       );
//     }
//   }

//   // Delete a card
//   void _deleteCard(int index) {
//     setState(() {
//       widget.savedCards.removeAt(index);
//     });
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Card deleted successfully!')),
//     );
//   }

//   // Update a card
//   void _updateCard(int index) async {
//     final cardData = widget.savedCards[index];
//     final updatedCard = await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => BusinessCardFormPage(
//           selectedTemplate: cardData['template'],
//           savedCards: widget.savedCards,
//         ),
//       ),
//     );

//     if (updatedCard != null) {
//       setState(() {
//         widget.savedCards[index]['data'] = updatedCard;
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Card updated successfully!')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Saved Business Cards"),
       
//       ),

//       body: widget.savedCards.isNotEmpty
//           ? ListView.builder(
//               itemCount: widget.savedCards.length,
//               itemBuilder: (context, index) {
//                 final cardData = widget.savedCards[index];
//                 final template = cardData['template'] as Widget;
//                 final data = cardData['data'] as BusinessCardModel;
//                 final String cardId =
//                     cardData['id'] ?? 'unknown'; // Ensure card ID is available

//                 return Card(
//                   elevation: 4,
//                   margin: const EdgeInsets.all(16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       children: [
//                         _renderTemplate(template, data),
//                         const SizedBox(height: 10),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             ElevatedButton.icon(
//                               onPressed: () => _updateCard(index),
//                               icon: const Icon(Icons.edit),
//                               label: const Text("Update"),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.blueAccent,
//                               ),
//                             ),
//                             ElevatedButton.icon(
//                               onPressed: () => _deleteCard(index),
//                               icon: const Icon(Icons.delete),
//                               label: const Text("Delete"),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.redAccent,
//                               ),
//                             ),
//                             ElevatedButton.icon(
//                               onPressed: () =>
//                                   _shareBusinessCard(context, cardId),
//                               icon: const Icon(Icons.share),
//                               label: const Text("Share"),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.green,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             )
//           : const Center(
//               child: Text(
//                 "No cards created yet.",
//                 style: TextStyle(fontSize: 16, color: Colors.black54),
//               ),
//             ),
//     );
//   }

//   Widget _renderTemplate(Widget template, BusinessCardModel data) {
//     if (template is BusinessCardWidget) {
//       return BusinessCardWidget(businessCard: data);
//     } else if (template is BusinessCardWidget2) {
//       return BusinessCardWidget2(businessCard: data);
//     }
//     return const SizedBox();
//   }
// }




import 'package:busines_card_maker/controller/firebase_dynamic_links.dart';
import 'package:busines_card_maker/view/cards/business_card1.dart';
import 'package:busines_card_maker/view/cards/business_card2.dart';
import 'package:busines_card_maker/view/home/fomrpage.dart';

import 'package:flutter/material.dart';
import 'package:busines_card_maker/controller/business_card_controller.dart';

class SavedCardsPage extends StatefulWidget {
  final List<Map<String, dynamic>> savedCards;

  const SavedCardsPage({Key? key, required this.savedCards}) : super(key: key);

  @override
  _SavedCardsPageState createState() => _SavedCardsPageState();
}

class _SavedCardsPageState extends State<SavedCardsPage> {
  final FirebaseDynamicLinksService _dynamicLinksService =
      FirebaseDynamicLinksService();

  // Show a placeholder message for share functionality
  void _showWorkingOnShareMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              const CircularProgressIndicator(),
              const SizedBox(width: 10),
              const Text("Feature Coming Soon")
            ],
          ),
          content: const Text(
            "We are currently working on the share functionality. Stay tuned for updates!",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  // Delete a card
  void _deleteCard(int index) {
    setState(() {
      widget.savedCards.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Card deleted successfully!')),
    );
  }

  // Update a card
  void _updateCard(int index) async {
    final cardData = widget.savedCards[index];
    final updatedCard = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BusinessCardFormPage(
          selectedTemplate: cardData['template'],
          savedCards: widget.savedCards,
        ),
      ),
    );

    if (updatedCard != null) {
      setState(() {
        widget.savedCards[index]['data'] = updatedCard;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Card updated successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Saved Business Cards"),
      ),
      body: widget.savedCards.isNotEmpty
          ? ListView.builder(
              itemCount: widget.savedCards.length,
              itemBuilder: (context, index) {
                final cardData = widget.savedCards[index];
                final template = cardData['template'] as Widget;
                final data = cardData['data'] as BusinessCardModel;

                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _renderTemplate(template, data),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () => _updateCard(index),
                              icon: const Icon(Icons.edit),
                              label: const Text("Update"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () => _deleteCard(index),
                              icon: const Icon(Icons.delete),
                              label: const Text("Delete"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () =>
                                  _showWorkingOnShareMessage(context),
                              icon: const Icon(Icons.share),
                              label: const Text("Share"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: Text(
                "No cards created yet.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
    );
  }

  Widget _renderTemplate(Widget template, BusinessCardModel data) {
    if (template is BusinessCardWidget) {
      return BusinessCardWidget(businessCard: data);
    } else if (template is BusinessCardWidget2) {
      return BusinessCardWidget2(businessCard: data);
    }
    return const SizedBox();
  }
}
