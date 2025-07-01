import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import 'button_rectangle.dart';
import 'button_text.dart';
import 'dart:html' as html;

class NavBar {
  void _downloadResume() {
    const url =
        'https://drive.google.com/uc?export=download&id=12jeD2-bjKpng9mdQKBg41eqywJnGI6bH';
    html.AnchorElement anchor = html.AnchorElement(href: url)
      ..setAttribute(
          'download', 'Ali_Ismail_Resume.pdf') // optional: set filename
      ..click();
  }

  Widget desktopNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonRectangle(
            name: DataValues.downloadResume,
            onPressed: () => _downloadResume(),
            color: AppThemeData.buttonPrimary,
            message: DataValues.downloadResume),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarAboutMe,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.aboutKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarAboutMe} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarEducation,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.educationKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarEducation} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarExperience,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.experienceKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarExperience} section',
        ),
        const SizedBox(width: 20.0),

        ButtonTextLarge(
          text: DataValues.navBarWorkShowCase,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.workShowcaseKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarWorkShowCase} section',
        ),

        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarVolunteering,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.volunteeringKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarVolunteering} section',
        ),

        // const SizedBox(width: 20.0),
        // ButtonTextLarge(
        //   text: DataValues.navBarTechNotes,
        //   onPressed: () => Scrollable.ensureVisible(
        //     KeyHolders.technotesKey.currentContext!,
        //     duration: const Duration(milliseconds: 1000),
        //   ),
        //   message: 'Go to ${DataValues.navBarTechNotes} section',
        // ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
            text: DataValues.navBarContactMe,
            onPressed: () => Scrollable.ensureVisible(
                  KeyHolders.contactKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                ),
            message: 'Go to ${DataValues.navBarContactMe} section'),
      ],
    );
  }

  Widget mobileNavBar() {
    Widget miniHeader() {
      return Column(
        children: [
          Image.asset('assets/images/logo.jpg', height: 80.0, width: 80.0),
          const SizedBox(height: 10.0),
          SelectableText(
            DataValues.headerName,
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: AppThemeData.darkTheme.textTheme.titleLarge?.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    return Drawer(
      backgroundColor: AppThemeData.backgroundBlack,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 60.0),
          miniHeader(),
          const SizedBox(height: 20.0),
          ButtonRectangle(
            name: DataValues.downloadResume,
            onPressed: () => _downloadResume(),
            color: AppThemeData.buttonPrimary,
            message: DataValues.downloadResume,
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarAboutMe,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.aboutKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarAboutMe} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarEducation,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.educationKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarEducation} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarExperience,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.experienceKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarExperience} section',
          ),
          const SizedBox(height: 20.0),

          ButtonTextLarge(
            text: DataValues.navBarWorkShowCase,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.workShowcaseKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarWorkShowCase} section',
          ),

          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarVolunteering,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.volunteeringKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarVolunteering} section',
          ),
          // const SizedBox(height: 20.0),
          // ButtonTextLarge(
          //   text: DataValues.navBarTechNotes,
          //   onPressed: () => Scrollable.ensureVisible(
          //     KeyHolders.technotesKey.currentContext!,
          //     duration: const Duration(milliseconds: 1000),
          //   ),
          //   message: 'Go to ${DataValues.navBarTechNotes} section',
          // ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
              text: DataValues.navBarContactMe,
              onPressed: () => Scrollable.ensureVisible(
                    KeyHolders.contactKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                  ),
              message: 'Go to ${DataValues.navBarContactMe} section'),
        ],
      ),
    );
  }
}
