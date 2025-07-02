import 'package:dileepabandara_dev/statics/portfolio_data.dart';
import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/frame_title.dart';

class MS5Work extends StatefulWidget {
  const MS5Work({Key? key}) : super(key: key);

  @override
  State<MS5Work> createState() => _MS5WorkState();
}

class _MS5WorkState extends State<MS5Work> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void _goToPage(int index) {
    if (index >= 0 && index < workData.length) {
      _controller.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final totalPages = workData.length;
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
                description: DataValues.workShowCaseDescription),
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
                          child: workData[index],
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
