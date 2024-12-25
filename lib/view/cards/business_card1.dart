// widgets/business_card_widget.dart
import 'package:busines_card_maker/controller/business_card_controller.dart';
import 'package:flutter/material.dart';


class BusinessCardWidget extends StatelessWidget {
  final BusinessCardModel businessCard;

  const BusinessCardWidget({Key? key, required this.businessCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 350,
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.orangeAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Left Side with Name and Contact Info
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      businessCard.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      businessCard.title,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.phone, size: 14, color: Colors.black54),
                        SizedBox(width: 5),
                        Text(
                          businessCard.phoneNumber,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, size: 14, color: Colors.black54),
                        SizedBox(width: 5),
                        Text(
                          businessCard.email,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.web, size: 14, color: Colors.black54),
                        SizedBox(width: 5),
                        Text(
                          businessCard.website,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Right Side with Logo, Company Name, and QR Code
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.business,
                      color: Colors.orange,
                      size: 30,
                    ),
                  ),
                  Text(
                    businessCard.companyName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    businessCard.slogan,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Uncomment and replace with actual QR code logic if needed
                  // Image.asset(
                  //   'assets/qr_code_placeholder.png', // Replace with actual QR code image
                  //   width: 50,
                  //   height: 50,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
