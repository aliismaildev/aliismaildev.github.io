import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

final List<Widget> workData = [
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
      android: "https://play.google.com/store/apps/details?id=com.twsaa.admin",
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


final List<Widget> experienceData = [
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
