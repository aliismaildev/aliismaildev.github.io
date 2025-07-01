import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS5Work extends StatefulWidget {
  const MS5Work({Key? key}) : super(key: key);

  @override
  State<MS5Work> createState() => _MS5WorkState();
}

class _MS5WorkState extends State<MS5Work> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  // Replace with your actual data
  final List<Widget> cardSlides = [
    // M5AZN
    ContainerCard().type5(
        image: 'm5azn-banner',
        title: "M5AZN",
        message:
            "M5AZN is a smart logistics and delivery management app, helping businesses streamline shipments and track orders across Saudi Arabia, Oman, and the UAE.",
        url: DataValues.linkedinURL,
        techStacks: [
          'Flutter',
          'REST API',
          'Firebase',
          'Payment methods',
          'OneSignal',
          'Figma',
        ],
        website: "https://m5azn.com",
        android:
            "https://play.google.com/store/apps/details?id=com.m5azn.product&hl=en",
        ios:
            "https://apps.apple.com/sa/app/m5azn-%D8%A7%D9%84%D9%85%D8%AE%D8%A7%D8%B2%D9%86-%D8%A7%D9%84%D8%A7%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A%D8%A9/id1619773093"),

    // Twsaa

    ContainerCard().type5(
        image: 'twsaa-banner',
        title: "Twsaa",
        message:
            "Twsaa is an all-in-one platform to create and manage online stores. It offers secure payments, built-in shipping, marketing tools, and real-time inventory tracking—everything you need to grow your business, whether from one store or many.",
        url: DataValues.linkedinURL,
        techStacks: [
          'Flutter',
          'REST API',
          'Firebase',
          'Payment methods',
          'OneSignal',
          'Figma',
        ],
        website: "https://twsaa.com/company/expand",
        android:
            "https://play.google.com/store/apps/details?id=com.twsaa.admin",
        ios:
            "https://apps.apple.com/sa/app/twsaa-%D8%AA%D9%88%D8%B3%D8%B9/id6468932135"),
    // M5azn-wms

    ContainerCard().type5(
      image: 'm5azn-wms-banner',
      title: "M5AZN WMS",
      message:
          "M5azn WMS is a complete warehouse management solution to track inventory, manage orders, and streamline shipping. It automates manual tasks, ensures stock accuracy, and supports smooth, scalable operations for growing businesses.",
      url: DataValues.linkedinURL,
      techStacks: [
        'Flutter',
        'REST API',
        'Firebase',
        'Payment methods',
        'OneSignal',
        'Figma',
      ],
      website: "https://m5aznwms.com",
    ),
    // rufoof
    ContainerCard().type5(
        image: 'rufoof-banner',
        title: "Rufoof: eBooks & Audiobooks",
        message:
            "Ruvoof is a free eBook app with a rich library of Arabic and English books. It features fast reading, smart search, note-taking, and a unique rewards system—making reading more enjoyable and accessible across all your devices.",
        url: DataValues.linkedinURL,
        techStacks: [
          'Flutter',
          'REST API',
          'Firebase',
          'Payment methods',
          'OneSignal',
          'Figma',
        ],
        website: "https://rufoof.com",
        android:
            "https://play.google.com/store/apps/details?id=co.yaqut.app&hl=en",
        ios:
            "https://apps.apple.com/sa/app/%D8%B1%D9%81%D9%88%D9%81-%D9%83%D8%AA%D8%A8-%D8%B5%D9%88%D8%AA%D9%8A%D8%A9-%D9%88%D8%A5%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A%D8%A9/id1115820042"),
  ];

  void _goToPage(int index) {
    if (index >= 0 && index < cardSlides.length) {
      _controller.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final totalPages = cardSlides.length;
    return Container(
      key: KeyHolders.workShowcaseKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.workShowCaseTitle,
                description: DataValues.volunteeringDescription),
            const SizedBox(height: 30.0),

            Container(
              constraints: BoxConstraints(
                maxHeight: 750,
              ),
              child: Row(
                children: [
                  // Left arrow
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => _goToPage(_currentPage - 1),
                  ),

                  // Slider
                  Expanded(
                    child: PageView.builder(
                      controller: _controller,
                      onPageChanged: (index) {
                        setState(() => _currentPage = index);
                      },
                      itemCount: totalPages,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: cardSlides[index],
                        );
                      },
                    ),
                  ),

                  // Right arrow
                  IconButton(
                    focusColor: Colors.grey,
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () => _goToPage(_currentPage + 1),
                  ),
                ],
              ),
            ),

            // Dots Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(totalPages, (index) {
                return Container(
                  margin: EdgeInsets.all(4.0),
                  width: _currentPage == index ? 12 : 8,
                  height: _currentPage == index ? 10 : 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? AppThemeData.primaryColor
                        : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
