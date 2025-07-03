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
        'There, I worked as a Full Stack Mobile Developer, leading the development of M5AZN’s mobile app and a comprehensive WMS suite to streamline warehouse and logistics operations. I designed and built high-impact solutions for inventory, dispatch, barcode scanning, and real-time stock updates. I also spearheaded the launch of Twsaa, a new SaaS-based mobile and backend system, contributing to the company’s digital transformation.',
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
        'As a Senior Flutter Developer, I built robust POS modules for SMACC and SCRIBES ERP systems, applying design patterns like MVC, MVP, and MVVM. I integrated REST/SOAP APIs, Firebase, Moor DB, and Google services to deliver scalable features. I focused on writing clean, testable code with high coverage, and collaborated closely with QA, product, and design teams to tackle complex Android issues and ensure smooth, stable releases.',
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
        'As a Flutter Project Manager, I led the development of key features for Dailyway, a carpool app designed to ensure smooth and reliable user-driver interactions. I also developed the admin panel using Flutter Web, integrating Google Maps APIs, Firestore, and Google Cloud Storage for real-time data and map services.',
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
        'I developed a Flutter plugin for the native video conferencing SDK Telebu Join, enabling smooth cross-platform in-app communication. I also contributed to FaraPay, a digital payment solution, by implementing new features, optimizing performance, and ensuring a seamless user experience on both Android and iOS.',
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
        'Led the development, testing, and on-time delivery of various freelance mobile applications using Flutter in a fast-paced, project-based environment. Managed and assigned daily tasks across multiple projects to ensure smooth collaboration and productivity among developers. Successfully integrated REST/SOAP APIs, Firebase (Firestore, Cloud Messaging), push notifications, and socket-based communication to deliver high-performance and feature-rich app solutions.',
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
        'Developed and delivered web and mobile applications using Flutter, Laravel, and modern web technologies. Built RESTful APIs for smooth backend-frontend integration. Maintained and customized the company’s WordPress website, including themes and plugins. Involved in the full development lifecycle—from requirements to deployment and support—ensuring timely and high-quality delivery.',
    message: DataValues.linkedinURL.toString(),
    url: DataValues.linkedinURL,
    isButtonEnabled: true,
  ),
];
