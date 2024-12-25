import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class FirebaseDynamicLinksService {
  Future<String> createDynamicLink(String cardId) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      link: Uri.parse('https://businesscards.page.link/card?id=$cardId'),
      uriPrefix: 'https://businesscards.page.link',
      androidParameters: AndroidParameters(
        packageName: 'com.example.yourapp',
        minimumVersion: 1,
      ),
      iosParameters: IOSParameters(
        bundleId: 'com.example.yourapp',
        appStoreId: '123456789',
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: 'Check Out My Business Card!',
        description: 'Here’s a personalized business card. Click to view!',
        imageUrl: Uri.parse('https://yourwebsite.com/card-preview.png'),
      ),
    );

    final ShortDynamicLink shortLink =
        await FirebaseDynamicLinks.instance.buildShortLink(parameters);
    return shortLink.shortUrl.toString();
  }
}
