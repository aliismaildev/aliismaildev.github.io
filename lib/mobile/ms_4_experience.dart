import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class MS4Experience extends StatefulWidget {
  const MS4Experience({Key? key}) : super(key: key);

  @override
  State<MS4Experience> createState() => _MS4ExperienceState();
}

class _MS4ExperienceState extends State<MS4Experience> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  // Replace with your actual data
  final List<Widget> cardSlides = [
    ContainerCard().type3(
      image: 'm5azn',
      title: 'M5AZN - المخازن الالكترونية',
      link: "https://m5azn.com",
      titleDesc: "(Remote)",
      role: 'Full Stack Mobile Developer',
      years: "Mar 2023 - Present",
      values:
          'Mobile, Desktop, Web development, UI UX, Tech Support Assistant & Data Analysis.',
      message: DataValues.linkedinURL.toString(),
      url: DataValues.linkedinURL,
      isButtonEnabled: true,
    ),
    ContainerCard().type3(
      image: 'magnatec',
      title: 'Magnatec Systems Private Limited',
      link: "https://magnatecsystems.com",
      role: 'Senior Flutter Developer',
      years: 'Feb 2021 - Mar 2023',
      values:
          'Android, Flutter, Dart, Firebase, Git, REST API, JSON Parsing & UI UX Designing.',
      message: DataValues.linkedinURL.toString(),
      url: DataValues.linkedinURL,
      isButtonEnabled: true,
    ),
    ContainerCard().type3(
      image: 'solobits',
      title: 'SoloBits.dev',
      link: "https://www.solobits.dev",
      titleDesc: "(Remote & Part-Time)",
      role: 'Flutter Project Manager',
      years: 'Mar 2022 - Feb 2023',
      values:
          'Android, Flutter, Dart, Firebase, Git, REST API, JSON Parsing & UI UX Designing.',
      message: DataValues.linkedinURL.toString(),
      url: DataValues.linkedinURL,
      isButtonEnabled: true,
    ),
    ContainerCard().type3(
      image: 'telebu',
      title: 'Telebu Communications LLP',
      link: "https://www.solobits.dev",
      titleDesc: "(Remote & Part-Time)",
      role: 'Android Consultant',
      years: 'Aug 2021 - Feb 2022',
      values:
          'Android, Flutter, Dart, Firebase, Git, REST API, JSON Parsing & UI UX Designing.',
      message: DataValues.linkedinURL.toString(),
      url: DataValues.linkedinURL,
      isButtonEnabled: true,
    ),
    ContainerCard().type3(
      image: 'highapp',
      title: 'HighApp Solutions',
      link: "http://highapp.co.uk/",
      role: 'Flutter Developer',
      years: 'Sep 2020 - Feb 2021',
      values:
          'Android, Flutter, Dart, Firebase, Git, REST API, JSON Parsing & UI UX Designing.',
      message: DataValues.linkedinURL.toString(),
      url: DataValues.linkedinURL,
      isButtonEnabled: true,
    ),
    ContainerCard().type3(
      image: 'technovier',
      title: 'Technovier',
      link: "https://www.technovier.com",
      role: 'Associate Software Engineer',
      years: 'Oct 2019 - Sep 2020',
      values:
          'Android, Flutter, Dart, Firebase, Git, REST API, JSON Parsing & UI UX Designing.',
      message: DataValues.linkedinURL.toString(),
      url: DataValues.linkedinURL,
      isButtonEnabled: true,
    ),
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
      key: KeyHolders.experienceKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.experienceTitle,
                description: DataValues.experienceDescription),
            const SizedBox(height: 30.0),

            Container(
              constraints: BoxConstraints(
                maxHeight: 400,
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
                  height: _currentPage == index ? 12 : 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? AppThemeData.primaryColor
                        : Colors.grey,
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
